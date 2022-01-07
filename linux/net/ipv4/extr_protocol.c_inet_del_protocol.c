
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_protocol {int dummy; } ;


 struct net_protocol const* cmpxchg (struct net_protocol const**,struct net_protocol const*,int *) ;
 int * inet_protos ;
 int synchronize_net () ;

int inet_del_protocol(const struct net_protocol *prot, unsigned char protocol)
{
 int ret;

 ret = (cmpxchg((const struct net_protocol **)&inet_protos[protocol],
         prot, ((void*)0)) == prot) ? 0 : -1;

 synchronize_net();

 return ret;
}
