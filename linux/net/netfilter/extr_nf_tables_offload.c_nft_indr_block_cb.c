
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_chain {int dummy; } ;
struct nft_base_chain {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;
typedef int flow_indr_block_bind_cb_t ;
typedef enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;


 struct nft_chain* __nft_offload_get_chain (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nft_base_chain* nft_base_chain (struct nft_chain*) ;
 int nft_indr_block_ing_cmd (struct net_device*,struct nft_base_chain*,int *,void*,int) ;

__attribute__((used)) static void nft_indr_block_cb(struct net_device *dev,
         flow_indr_block_bind_cb_t *cb, void *cb_priv,
         enum flow_block_command cmd)
{
 struct net *net = dev_net(dev);
 struct nft_chain *chain;

 mutex_lock(&net->nft.commit_mutex);
 chain = __nft_offload_get_chain(dev);
 if (chain) {
  struct nft_base_chain *basechain;

  basechain = nft_base_chain(chain);
  nft_indr_block_ing_cmd(dev, basechain, cb, cb_priv, cmd);
 }
 mutex_unlock(&net->nft.commit_mutex);
}
