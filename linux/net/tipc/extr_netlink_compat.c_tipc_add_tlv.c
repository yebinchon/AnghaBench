
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlv_desc {void* tlv_len; void* tlv_type; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 int TLV_DATA (struct tlv_desc*) ;
 int TLV_LENGTH (int ) ;
 scalar_t__ TLV_SPACE (int ) ;
 void* htons (int ) ;
 int memcpy (int ,void*,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ tipc_skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int tipc_add_tlv(struct sk_buff *skb, u16 type, void *data, u16 len)
{
 struct tlv_desc *tlv = (struct tlv_desc *)skb_tail_pointer(skb);

 if (tipc_skb_tailroom(skb) < TLV_SPACE(len))
  return -EMSGSIZE;

 skb_put(skb, TLV_SPACE(len));
 tlv->tlv_type = htons(type);
 tlv->tlv_len = htons(TLV_LENGTH(len));
 if (len && data)
  memcpy(TLV_DATA(tlv), data, len);

 return 0;
}
