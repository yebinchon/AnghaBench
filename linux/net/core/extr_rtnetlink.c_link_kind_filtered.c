
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;
struct net_device {struct rtnl_link_ops const* rtnl_link_ops; } ;



__attribute__((used)) static bool link_kind_filtered(const struct net_device *dev,
          const struct rtnl_link_ops *kind_ops)
{
 if (kind_ops && dev->rtnl_link_ops != kind_ops)
  return 1;

 return 0;
}
