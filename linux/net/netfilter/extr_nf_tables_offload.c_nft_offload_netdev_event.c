
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct nft_chain {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int NOTIFY_DONE ;
 struct nft_chain* __nft_offload_get_chain (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nft_offload_chain_clean (struct nft_chain*) ;

__attribute__((used)) static int nft_offload_netdev_event(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct net *net = dev_net(dev);
 struct nft_chain *chain;

 mutex_lock(&net->nft.commit_mutex);
 chain = __nft_offload_get_chain(dev);
 if (chain)
  nft_offload_chain_clean(chain);
 mutex_unlock(&net->nft.commit_mutex);

 return NOTIFY_DONE;
}
