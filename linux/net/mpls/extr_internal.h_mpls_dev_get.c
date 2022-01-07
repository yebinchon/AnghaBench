
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mpls_ptr; } ;
struct mpls_dev {int dummy; } ;


 struct mpls_dev* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static inline struct mpls_dev *mpls_dev_get(const struct net_device *dev)
{
 return rcu_dereference_rtnl(dev->mpls_ptr);
}
