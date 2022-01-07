
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 size_t br_port_info_size () ;

__attribute__((used)) static size_t br_port_get_slave_size(const struct net_device *brdev,
         const struct net_device *dev)
{
 return br_port_info_size();
}
