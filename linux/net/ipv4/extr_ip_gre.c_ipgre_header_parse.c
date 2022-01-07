
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int saddr; } ;


 int memcpy (unsigned char*,int *,int) ;
 scalar_t__ skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static int ipgre_header_parse(const struct sk_buff *skb, unsigned char *haddr)
{
 const struct iphdr *iph = (const struct iphdr *) skb_mac_header(skb);
 memcpy(haddr, &iph->saddr, 4);
 return 4;
}
