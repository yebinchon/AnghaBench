
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int dummy; } ;
typedef scalar_t__ ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 int NFNL_SUBSYS_IPSET ;
 int __ip_set_get (struct ip_set*) ;
 struct ip_set* ip_set (struct ip_set_net*,scalar_t__) ;
 struct ip_set_net* ip_set_pernet (struct net*) ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

ip_set_id_t
ip_set_nfnl_get_byindex(struct net *net, ip_set_id_t index)
{
 struct ip_set *set;
 struct ip_set_net *inst = ip_set_pernet(net);

 if (index >= inst->ip_set_max)
  return IPSET_INVALID_ID;

 nfnl_lock(NFNL_SUBSYS_IPSET);
 set = ip_set(inst, index);
 if (set)
  __ip_set_get(set);
 else
  index = IPSET_INVALID_ID;
 nfnl_unlock(NFNL_SUBSYS_IPSET);

 return index;
}
