
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;


 int ipv6_optlen (struct ipv6_opt_hdr*) ;
 int memcpy (struct ipv6_opt_hdr*,struct ipv6_opt_hdr*,int ) ;
 struct ipv6_opt_hdr* skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void ipv6_push_exthdr(struct sk_buff *skb, u8 *proto, u8 type, struct ipv6_opt_hdr *opt)
{
 struct ipv6_opt_hdr *h = skb_push(skb, ipv6_optlen(opt));

 memcpy(h, opt, ipv6_optlen(opt));
 h->nexthdr = *proto;
 *proto = type;
}
