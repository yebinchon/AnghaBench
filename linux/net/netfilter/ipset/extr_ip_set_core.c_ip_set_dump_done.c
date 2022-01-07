
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_callback {scalar_t__* args; } ;
struct ip_set_net {int dummy; } ;
struct ip_set {int name; TYPE_1__* variant; } ;
typedef int ip_set_id_t ;
struct TYPE_2__ {int (* uref ) (struct ip_set*,struct netlink_callback*,int) ;} ;


 size_t IPSET_CB_ARG0 ;
 size_t IPSET_CB_INDEX ;
 size_t IPSET_CB_NET ;
 int __ip_set_put_netlink (struct ip_set*) ;
 struct ip_set* ip_set_ref_netlink (struct ip_set_net*,int ) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct ip_set*,struct netlink_callback*,int) ;

__attribute__((used)) static int
ip_set_dump_done(struct netlink_callback *cb)
{
 if (cb->args[IPSET_CB_ARG0]) {
  struct ip_set_net *inst =
   (struct ip_set_net *)cb->args[IPSET_CB_NET];
  ip_set_id_t index = (ip_set_id_t)cb->args[IPSET_CB_INDEX];
  struct ip_set *set = ip_set_ref_netlink(inst, index);

  if (set->variant->uref)
   set->variant->uref(set, cb, 0);
  pr_debug("release set %s\n", set->name);
  __ip_set_put_netlink(set);
 }
 return 0;
}
