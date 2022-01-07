
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_subscr {int dummy; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int service_list; int net; TYPE_1__ evt; } ;
struct tipc_service {int lock; int service_list; int subscriptions; int ranges; } ;
struct tipc_net {int nametbl_lock; } ;
struct TYPE_4__ {int type; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int hlist_del_init_rcu (int *) ;
 int kfree_rcu (struct tipc_service*,int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int rcu ;
 TYPE_2__ seq ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tipc_net* tipc_net (int ) ;
 struct tipc_service* tipc_service_find (int ,int ) ;
 int tipc_sub_put (struct tipc_subscription*) ;
 int tipc_sub_read (struct tipc_subscr*,int ) ;

void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
{
 struct tipc_net *tn = tipc_net(sub->net);
 struct tipc_subscr *s = &sub->evt.s;
 u32 type = tipc_sub_read(s, seq.type);
 struct tipc_service *sc;

 spin_lock_bh(&tn->nametbl_lock);
 sc = tipc_service_find(sub->net, type);
 if (!sc)
  goto exit;

 spin_lock_bh(&sc->lock);
 list_del_init(&sub->service_list);
 tipc_sub_put(sub);


 if (RB_EMPTY_ROOT(&sc->ranges) && list_empty(&sc->subscriptions)) {
  hlist_del_init_rcu(&sc->service_list);
  kfree_rcu(sc, rcu);
 }
 spin_unlock_bh(&sc->lock);
exit:
 spin_unlock_bh(&tn->nametbl_lock);
}
