
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct sk_buff {int dummy; } ;


 unsigned char* skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static int pn_header_parse(const struct sk_buff *skb, unsigned char *haddr)
{
 const u8 *media = skb_mac_header(skb);
 *haddr = *media;
 return 1;
}
