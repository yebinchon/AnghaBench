
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct nf_bridge_info {int * physoutdev; int physindev; int neigh_header; scalar_t__ bridged_dnat; } ;


 int BUILD_BUG_ON (int) ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int br_handle_frame_finish (int ,int *,struct sk_buff*) ;
 int dev_net (int ) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void br_nf_pre_routing_finish_bridge_slow(struct sk_buff *skb)
{
 struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);

 skb_pull(skb, ETH_HLEN);
 nf_bridge->bridged_dnat = 0;

 BUILD_BUG_ON(sizeof(nf_bridge->neigh_header) != (ETH_HLEN - ETH_ALEN));

 skb_copy_to_linear_data_offset(skb, -(ETH_HLEN - ETH_ALEN),
           nf_bridge->neigh_header,
           ETH_HLEN - ETH_ALEN);
 skb->dev = nf_bridge->physindev;

 nf_bridge->physoutdev = ((void*)0);
 br_handle_frame_finish(dev_net(skb->dev), ((void*)0), skb);
}
