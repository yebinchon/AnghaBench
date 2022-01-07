
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; } ;
struct hsr_port {int dummy; } ;


 int ASSERT_RTNL () ;
 scalar_t__ hsr_port_exists (struct net_device const*) ;
 struct hsr_port* rtnl_dereference (int ) ;

__attribute__((used)) static inline struct hsr_port *hsr_port_get_rtnl(const struct net_device *dev)
{
 ASSERT_RTNL();
 return hsr_port_exists(dev) ?
    rtnl_dereference(dev->rx_handler_data) : ((void*)0);
}
