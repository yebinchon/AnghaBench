
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ctnl_timeout {int timeout; int head; int refcnt; } ;


 int EBUSY ;
 int kfree_rcu (struct ctnl_timeout*,int ) ;
 int list_del_rcu (int *) ;
 int nf_ct_untimeout (struct net*,int *) ;
 int rcu_head ;
 scalar_t__ refcount_dec_if_one (int *) ;

__attribute__((used)) static int ctnl_timeout_try_del(struct net *net, struct ctnl_timeout *timeout)
{
 int ret = 0;




 if (refcount_dec_if_one(&timeout->refcnt)) {

  list_del_rcu(&timeout->head);
  nf_ct_untimeout(net, &timeout->timeout);
  kfree_rcu(timeout, rcu_head);
 } else {
  ret = -EBUSY;
 }
 return ret;
}
