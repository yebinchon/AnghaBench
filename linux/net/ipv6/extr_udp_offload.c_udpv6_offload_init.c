
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_UDP ;
 int inet6_add_offload (int *,int ) ;
 int udpv6_offload ;

int udpv6_offload_init(void)
{
 return inet6_add_offload(&udpv6_offload, IPPROTO_UDP);
}
