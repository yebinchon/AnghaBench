
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlv_desc {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int TLV_SET_LEN (struct tlv_desc*,int ) ;
 int TLV_SET_TYPE (struct tlv_desc*,int ) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void tipc_tlv_init(struct sk_buff *skb, u16 type)
{
 struct tlv_desc *tlv = (struct tlv_desc *)skb->data;

 TLV_SET_LEN(tlv, 0);
 TLV_SET_TYPE(tlv, type);
 skb_put(skb, sizeof(struct tlv_desc));
}
