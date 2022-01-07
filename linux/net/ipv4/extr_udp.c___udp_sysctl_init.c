
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sysctl_udp_l3mdev_accept; void* sysctl_udp_wmem_min; void* sysctl_udp_rmem_min; } ;
struct net {TYPE_1__ ipv4; } ;


 void* SK_MEM_QUANTUM ;

__attribute__((used)) static void __udp_sysctl_init(struct net *net)
{
 net->ipv4.sysctl_udp_rmem_min = SK_MEM_QUANTUM;
 net->ipv4.sysctl_udp_wmem_min = SK_MEM_QUANTUM;




}
