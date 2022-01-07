
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_2__* target; int family; int targinfo; struct net* net; } ;
struct net {int dummy; } ;
struct TYPE_3__ {TYPE_2__* target; } ;
struct ebt_entry_target {int data; TYPE_1__ u; } ;
struct ebt_entry {scalar_t__ bitmask; } ;
struct TYPE_4__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int EBT_MATCH_ITERATE (struct ebt_entry*,int ,struct net*,int *) ;
 int EBT_WATCHER_ITERATE (struct ebt_entry*,int ,struct net*,int *) ;
 int NFPROTO_BRIDGE ;
 int ebt_cleanup_match ;
 int ebt_cleanup_watcher ;
 struct ebt_entry_target* ebt_get_target (struct ebt_entry*) ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static inline int
ebt_cleanup_entry(struct ebt_entry *e, struct net *net, unsigned int *cnt)
{
 struct xt_tgdtor_param par;
 struct ebt_entry_target *t;

 if (e->bitmask == 0)
  return 0;

 if (cnt && (*cnt)-- == 0)
  return 1;
 EBT_WATCHER_ITERATE(e, ebt_cleanup_watcher, net, ((void*)0));
 EBT_MATCH_ITERATE(e, ebt_cleanup_match, net, ((void*)0));
 t = ebt_get_target(e);

 par.net = net;
 par.target = t->u.target;
 par.targinfo = t->data;
 par.family = NFPROTO_BRIDGE;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
 return 0;
}
