
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int skb_put_data (struct sk_buff*,int *,int ) ;

__attribute__((used)) static struct sk_buff *llcp_add_tlv(struct sk_buff *pdu, u8 *tlv,
        u8 tlv_length)
{


 if (tlv == ((void*)0))
  return ((void*)0);

 skb_put_data(pdu, tlv, tlv_length);

 return pdu;
}
