
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int _optval ;
typedef int __u32 ;


 int* skb_header_pointer (struct sk_buff*,int ,int,int*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static bool opt_unrec(struct sk_buff *skb, __u32 offset)
{
 u8 _optval, *op;

 offset += skb_network_offset(skb);
 op = skb_header_pointer(skb, offset, sizeof(_optval), &_optval);
 if (!op)
  return 1;
 return (*op & 0xC0) == 0x80;
}
