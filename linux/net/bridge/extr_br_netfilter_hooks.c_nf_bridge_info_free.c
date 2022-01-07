
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int SKB_EXT_BRIDGE_NF ;
 int skb_ext_del (struct sk_buff*,int ) ;

__attribute__((used)) static void nf_bridge_info_free(struct sk_buff *skb)
{
 skb_ext_del(skb, SKB_EXT_BRIDGE_NF);
}
