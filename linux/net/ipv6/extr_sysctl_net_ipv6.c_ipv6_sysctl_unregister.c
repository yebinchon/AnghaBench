
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip6_header ;
 int ipv6_sysctl_net_ops ;
 int unregister_net_sysctl_table (int ) ;
 int unregister_pernet_subsys (int *) ;

void ipv6_sysctl_unregister(void)
{
 unregister_net_sysctl_table(ip6_header);
 unregister_pernet_subsys(&ipv6_sysctl_net_ops);
}
