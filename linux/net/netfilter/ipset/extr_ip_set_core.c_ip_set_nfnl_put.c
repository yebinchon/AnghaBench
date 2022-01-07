
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {int is_deleted; } ;
struct ip_set {int dummy; } ;
typedef int ip_set_id_t ;


 int NFNL_SUBSYS_IPSET ;
 int __ip_set_put (struct ip_set*) ;
 struct ip_set* ip_set (struct ip_set_net*,int ) ;
 struct ip_set_net* ip_set_pernet (struct net*) ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

void
ip_set_nfnl_put(struct net *net, ip_set_id_t index)
{
 struct ip_set *set;
 struct ip_set_net *inst = ip_set_pernet(net);

 nfnl_lock(NFNL_SUBSYS_IPSET);
 if (!inst->is_deleted) {
  set = ip_set(inst, index);
  if (set)
   __ip_set_put(set);
 }
 nfnl_unlock(NFNL_SUBSYS_IPSET);
}
