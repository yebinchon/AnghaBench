
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;
struct clusterip_net {int mutex; int procdir; int lock; int configs; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int cip_arp_ops ;
 struct clusterip_net* clusterip_pernet (struct net*) ;
 int mutex_init (int *) ;
 int nf_register_net_hook (struct net*,int *) ;
 int nf_unregister_net_hook (struct net*,int *) ;
 int pr_err (char*) ;
 int proc_mkdir (char*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int clusterip_net_init(struct net *net)
{
 struct clusterip_net *cn = clusterip_pernet(net);
 int ret;

 INIT_LIST_HEAD(&cn->configs);

 spin_lock_init(&cn->lock);

 ret = nf_register_net_hook(net, &cip_arp_ops);
 if (ret < 0)
  return ret;
 return 0;
}
