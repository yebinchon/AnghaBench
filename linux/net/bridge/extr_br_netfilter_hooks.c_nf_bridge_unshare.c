
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_bridge_info {int dummy; } ;


 int SKB_EXT_BRIDGE_NF ;
 struct nf_bridge_info* skb_ext_add (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct nf_bridge_info *nf_bridge_unshare(struct sk_buff *skb)
{
 return skb_ext_add(skb, SKB_EXT_BRIDGE_NF);
}
