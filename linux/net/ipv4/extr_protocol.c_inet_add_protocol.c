
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_protocol {int netns_ok; } ;


 int EINVAL ;
 int cmpxchg (struct net_protocol const**,int *,struct net_protocol const*) ;
 int * inet_protos ;
 int pr_err (char*,unsigned char) ;

int inet_add_protocol(const struct net_protocol *prot, unsigned char protocol)
{
 if (!prot->netns_ok) {
  pr_err("Protocol %u is not namespace aware, cannot register.\n",
   protocol);
  return -EINVAL;
 }

 return !cmpxchg((const struct net_protocol **)&inet_protos[protocol],
   ((void*)0), prot) ? 0 : -1;
}
