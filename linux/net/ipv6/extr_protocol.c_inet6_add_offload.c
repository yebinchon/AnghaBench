
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_offload {int dummy; } ;


 int cmpxchg (struct net_offload const**,int *,struct net_offload const*) ;
 int * inet6_offloads ;

int inet6_add_offload(const struct net_offload *prot, unsigned char protocol)
{
 return !cmpxchg((const struct net_offload **)&inet6_offloads[protocol],
   ((void*)0), prot) ? 0 : -1;
}
