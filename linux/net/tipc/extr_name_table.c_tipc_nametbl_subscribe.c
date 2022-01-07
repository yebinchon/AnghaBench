
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_subscr {int dummy; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int net; TYPE_1__ evt; } ;
struct tipc_service {int lock; } ;
struct tipc_net {int nametbl_lock; } ;
struct name_table {int * services; } ;
struct TYPE_4__ {int upper; int lower; int type; } ;


 size_t hash (int ) ;
 int pr_warn (char*,int ,int ,int ) ;
 TYPE_2__ seq ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct name_table* tipc_name_table (int ) ;
 struct tipc_net* tipc_net (int ) ;
 struct tipc_service* tipc_service_create (int ,int *) ;
 struct tipc_service* tipc_service_find (int ,int ) ;
 int tipc_service_subscribe (struct tipc_service*,struct tipc_subscription*) ;
 int tipc_sub_read (struct tipc_subscr*,int ) ;

bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
{
 struct name_table *nt = tipc_name_table(sub->net);
 struct tipc_net *tn = tipc_net(sub->net);
 struct tipc_subscr *s = &sub->evt.s;
 u32 type = tipc_sub_read(s, seq.type);
 struct tipc_service *sc;
 bool res = 1;

 spin_lock_bh(&tn->nametbl_lock);
 sc = tipc_service_find(sub->net, type);
 if (!sc)
  sc = tipc_service_create(type, &nt->services[hash(type)]);
 if (sc) {
  spin_lock_bh(&sc->lock);
  tipc_service_subscribe(sc, sub);
  spin_unlock_bh(&sc->lock);
 } else {
  pr_warn("Failed to subscribe for {%u,%u,%u}\n", type,
   tipc_sub_read(s, seq.lower),
   tipc_sub_read(s, seq.upper));
  res = 0;
 }
 spin_unlock_bh(&tn->nametbl_lock);
 return res;
}
