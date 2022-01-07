
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int bacct; } ;
struct bsd_acct_struct {int lock; int count; } ;


 int READ_ONCE (int ) ;
 int acct_put (struct bsd_acct_struct*) ;
 int atomic_long_inc_not_zero (int *) ;
 int cpu_relax () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 struct bsd_acct_struct* to_acct (int ) ;

__attribute__((used)) static struct bsd_acct_struct *acct_get(struct pid_namespace *ns)
{
 struct bsd_acct_struct *res;
again:
 smp_rmb();
 rcu_read_lock();
 res = to_acct(READ_ONCE(ns->bacct));
 if (!res) {
  rcu_read_unlock();
  return ((void*)0);
 }
 if (!atomic_long_inc_not_zero(&res->count)) {
  rcu_read_unlock();
  cpu_relax();
  goto again;
 }
 rcu_read_unlock();
 mutex_lock(&res->lock);
 if (res != to_acct(READ_ONCE(ns->bacct))) {
  mutex_unlock(&res->lock);
  acct_put(res);
  goto again;
 }
 return res;
}
