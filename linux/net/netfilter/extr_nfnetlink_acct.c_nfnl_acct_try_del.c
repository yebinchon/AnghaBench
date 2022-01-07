
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_acct {int head; int refcnt; } ;


 int EBUSY ;
 int kfree_rcu (struct nf_acct*,int ) ;
 int list_del_rcu (int *) ;
 int rcu_head ;
 scalar_t__ refcount_dec_if_one (int *) ;

__attribute__((used)) static int nfnl_acct_try_del(struct nf_acct *cur)
{
 int ret = 0;




 if (refcount_dec_if_one(&cur->refcnt)) {

  list_del_rcu(&cur->head);
  kfree_rcu(cur, rcu_head);
 } else {
  ret = -EBUSY;
 }
 return ret;
}
