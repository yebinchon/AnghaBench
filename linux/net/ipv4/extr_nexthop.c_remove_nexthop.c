
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_info {int dummy; } ;
struct nexthop {int rb_node; } ;
struct TYPE_2__ {int rb_root; } ;
struct net {TYPE_1__ nexthop; } ;


 int RTM_DELNEXTHOP ;
 int __remove_nexthop (struct net*,struct nexthop*,struct nl_info*) ;
 int nexthop_notify (int ,struct nexthop*,struct nl_info*) ;
 int nexthop_put (struct nexthop*) ;
 int nh_base_seq_inc (struct net*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void remove_nexthop(struct net *net, struct nexthop *nh,
      struct nl_info *nlinfo)
{

 rb_erase(&nh->rb_node, &net->nexthop.rb_root);

 if (nlinfo)
  nexthop_notify(RTM_DELNEXTHOP, nh, nlinfo);

 __remove_nexthop(net, nh, nlinfo);
 nh_base_seq_inc(net);

 nexthop_put(nh);
}
