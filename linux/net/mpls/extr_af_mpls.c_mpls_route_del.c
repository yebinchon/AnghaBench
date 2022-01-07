
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net* nl_net; } ;
struct mpls_route_config {unsigned int rc_label; TYPE_1__ rc_nlinfo; } ;


 int EINVAL ;
 int mpls_label_ok (struct net*,unsigned int*,struct netlink_ext_ack*) ;
 int mpls_route_update (struct net*,unsigned int,int *,TYPE_1__*) ;

__attribute__((used)) static int mpls_route_del(struct mpls_route_config *cfg,
     struct netlink_ext_ack *extack)
{
 struct net *net = cfg->rc_nlinfo.nl_net;
 unsigned index;
 int err = -EINVAL;

 index = cfg->rc_label;

 if (!mpls_label_ok(net, &index, extack))
  goto errout;

 mpls_route_update(net, index, ((void*)0), &cfg->rc_nlinfo);

 err = 0;
errout:
 return err;
}
