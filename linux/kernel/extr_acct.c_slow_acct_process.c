
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {struct pid_namespace* parent; } ;
struct bsd_acct_struct {int lock; } ;


 struct bsd_acct_struct* acct_get (struct pid_namespace*) ;
 int acct_put (struct bsd_acct_struct*) ;
 int do_acct_process (struct bsd_acct_struct*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void slow_acct_process(struct pid_namespace *ns)
{
 for ( ; ns; ns = ns->parent) {
  struct bsd_acct_struct *acct = acct_get(ns);
  if (acct) {
   do_acct_process(acct);
   mutex_unlock(&acct->lock);
   acct_put(acct);
  }
 }
}
