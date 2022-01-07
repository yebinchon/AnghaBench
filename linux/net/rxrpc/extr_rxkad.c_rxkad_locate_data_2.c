
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct rxkad_level2_hdr {int data_size; } ;
typedef int sechdr ;


 int BUG () ;
 int ntohl (int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,struct rxkad_level2_hdr*,int) ;

__attribute__((used)) static void rxkad_locate_data_2(struct rxrpc_call *call, struct sk_buff *skb,
    unsigned int *_offset, unsigned int *_len)
{
 struct rxkad_level2_hdr sechdr;

 if (skb_copy_bits(skb, *_offset, &sechdr, sizeof(sechdr)) < 0)
  BUG();
 *_offset += sizeof(sechdr);
 *_len = ntohl(sechdr.data_size) & 0xffff;
}
