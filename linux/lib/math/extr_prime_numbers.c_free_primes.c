
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct primes {int dummy; } ;


 int kfree_rcu (struct primes*,int ) ;
 int lock ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int primes ;
 int rcu ;
 int rcu_assign_pointer (int ,struct primes const*) ;
 struct primes* rcu_dereference_protected (int ,int ) ;
 struct primes const small_primes ;

__attribute__((used)) static void free_primes(void)
{
 const struct primes *p;

 mutex_lock(&lock);
 p = rcu_dereference_protected(primes, lockdep_is_held(&lock));
 if (p != &small_primes) {
  rcu_assign_pointer(primes, &small_primes);
  kfree_rcu((struct primes *)p, rcu);
 }
 mutex_unlock(&lock);
}
