
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_offload {int dummy; } ;


 struct net_offload const* cmpxchg (struct net_offload const**,struct net_offload const*,int *) ;
 int * inet6_offloads ;
 int synchronize_net () ;

int inet6_del_offload(const struct net_offload *prot, unsigned char protocol)
{
 int ret;

 ret = (cmpxchg((const struct net_offload **)&inet6_offloads[protocol],
         prot, ((void*)0)) == prot) ? 0 : -1;

 synchronize_net();

 return ret;
}
