
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_acct {int refcnt; } ;


 int THIS_MODULE ;
 int kfree_rcu (struct nf_acct*,int ) ;
 int module_put (int ) ;
 int rcu_head ;
 scalar_t__ refcount_dec_and_test (int *) ;

void nfnl_acct_put(struct nf_acct *acct)
{
 if (refcount_dec_and_test(&acct->refcnt))
  kfree_rcu(acct, rcu_head);

 module_put(THIS_MODULE);
}
