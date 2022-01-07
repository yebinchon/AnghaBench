
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_address {scalar_t__* x25_addr; } ;
struct sk_buff {unsigned char* data; } ;


 int pskb_may_pull (struct sk_buff*,int) ;
 int x25_addr_ntoa (unsigned char*,struct x25_address*,struct x25_address*) ;

int x25_parse_address_block(struct sk_buff *skb,
  struct x25_address *called_addr,
  struct x25_address *calling_addr)
{
 unsigned char len;
 int needed;
 int rc;

 if (!pskb_may_pull(skb, 1)) {

  rc = 0;
  goto empty;
 }

 len = *skb->data;
 needed = 1 + ((len >> 4) + (len & 0x0f) + 1) / 2;

 if (!pskb_may_pull(skb, needed)) {


  rc = -1;
  goto empty;
 }

 return x25_addr_ntoa(skb->data, called_addr, calling_addr);

empty:
 *called_addr->x25_addr = 0;
 *calling_addr->x25_addr = 0;

 return rc;
}
