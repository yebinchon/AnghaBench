
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int LLCP_HEADER_SIZE ;
 int pr_debug (char*,int,int,...) ;
 int skb_put_data (struct sk_buff*,int*,int ) ;

__attribute__((used)) static struct sk_buff *llcp_add_header(struct sk_buff *pdu,
           u8 dsap, u8 ssap, u8 ptype)
{
 u8 header[2];

 pr_debug("ptype 0x%x dsap 0x%x ssap 0x%x\n", ptype, dsap, ssap);

 header[0] = (u8)((dsap << 2) | (ptype >> 2));
 header[1] = (u8)((ptype << 6) | ssap);

 pr_debug("header 0x%x 0x%x\n", header[0], header[1]);

 skb_put_data(pdu, header, LLCP_HEADER_SIZE);

 return pdu;
}
