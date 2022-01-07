
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;


 int NFC_HEADER_SIZE ;
 scalar_t__ skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int rawsock_add_header(struct sk_buff *skb)
{
 *(u8 *)skb_push(skb, NFC_HEADER_SIZE) = 0;

 return 0;
}
