
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_base_chain {int flow_block; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {int command; int cb_list; struct netlink_ext_ack* extack; int binder_type; int * block; int net; } ;
typedef enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;


 int EOPNOTSUPP ;
 int FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;
 int INIT_LIST_HEAD (int *) ;
 int dev_net (struct net_device*) ;
 int flow_indr_block_call (struct net_device*,struct flow_block_offload*,int) ;
 scalar_t__ list_empty (int *) ;
 int nft_block_setup (struct nft_base_chain*,struct flow_block_offload*,int) ;

__attribute__((used)) static int nft_indr_block_offload_cmd(struct nft_base_chain *chain,
          struct net_device *dev,
          enum flow_block_command cmd)
{
 struct flow_block_offload bo = {};
 struct netlink_ext_ack extack = {};

 bo.net = dev_net(dev);
 bo.block = &chain->flow_block;
 bo.command = cmd;
 bo.binder_type = FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS;
 bo.extack = &extack;
 INIT_LIST_HEAD(&bo.cb_list);

 flow_indr_block_call(dev, &bo, cmd);

 if (list_empty(&bo.cb_list))
  return -EOPNOTSUPP;

 return nft_block_setup(chain, &bo, cmd);
}
