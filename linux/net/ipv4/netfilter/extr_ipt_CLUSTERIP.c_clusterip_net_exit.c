
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct clusterip_net {int mutex; int * procdir; } ;


 int cip_arp_ops ;
 struct clusterip_net* clusterip_pernet (struct net*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_unregister_net_hook (struct net*,int *) ;
 int proc_remove (int *) ;

__attribute__((used)) static void clusterip_net_exit(struct net *net)
{
 nf_unregister_net_hook(net, &cip_arp_ops);
}
