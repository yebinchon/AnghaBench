
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int all; } ;
struct xfrm_policy {TYPE_2__ walk; int byidx; int bydst_inexact_list; int bydst; } ;
struct TYPE_3__ {int * policy_count; } ;
struct net {TYPE_1__ xfrm; } ;


 int hlist_del (int *) ;
 int hlist_del_init (int *) ;
 int hlist_del_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_policy *__xfrm_policy_unlink(struct xfrm_policy *pol,
      int dir)
{
 struct net *net = xp_net(pol);

 if (list_empty(&pol->walk.all))
  return ((void*)0);


 if (!hlist_unhashed(&pol->bydst)) {
  hlist_del_rcu(&pol->bydst);
  hlist_del_init(&pol->bydst_inexact_list);
  hlist_del(&pol->byidx);
 }

 list_del_init(&pol->walk.all);
 net->xfrm.policy_count[dir]--;

 return pol;
}
