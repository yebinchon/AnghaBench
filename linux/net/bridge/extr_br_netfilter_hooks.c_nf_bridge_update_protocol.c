
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {void* protocol; } ;
struct nf_bridge_info {int orig_proto; } ;





 int ETH_P_8021Q ;
 int ETH_P_PPP_SES ;
 void* htons (int ) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;

void nf_bridge_update_protocol(struct sk_buff *skb)
{
 const struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);

 switch (nf_bridge->orig_proto) {
 case 130:
  skb->protocol = htons(ETH_P_8021Q);
  break;
 case 129:
  skb->protocol = htons(ETH_P_PPP_SES);
  break;
 case 128:
  break;
 }
}
