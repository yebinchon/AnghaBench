
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xt_action_param {int hotdrop; struct ip6t_ipv6header_info* matchinfo; } ;
struct sk_buff {unsigned int len; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct ip6t_ipv6header_info {unsigned int matchflags; unsigned int invflags; scalar_t__ modeflag; } ;
typedef int _hdr ;
struct TYPE_2__ {int nexthdr; } ;


 unsigned int MASK_AH ;
 unsigned int MASK_DSTOPTS ;
 unsigned int MASK_ESP ;
 unsigned int MASK_FRAGMENT ;
 unsigned int MASK_HOPOPTS ;
 unsigned int MASK_NONE ;
 unsigned int MASK_PROTO ;
 unsigned int MASK_ROUTING ;


 int NEXTHDR_ESP ;


 int NEXTHDR_NONE ;

 int ipv6_authlen (struct ipv6_opt_hdr const*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff const*) ;
 int ipv6_optlen (struct ipv6_opt_hdr const*) ;
 scalar_t__ nf_ip6_ext_hdr (int) ;
 struct ipv6_opt_hdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct ipv6_opt_hdr*) ;

__attribute__((used)) static bool
ipv6header_mt6(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ip6t_ipv6header_info *info = par->matchinfo;
 unsigned int temp;
 int len;
 u8 nexthdr;
 unsigned int ptr;




 nexthdr = ipv6_hdr(skb)->nexthdr;

 ptr = sizeof(struct ipv6hdr);

 len = skb->len - ptr;
 temp = 0;

 while (nf_ip6_ext_hdr(nexthdr)) {
  const struct ipv6_opt_hdr *hp;
  struct ipv6_opt_hdr _hdr;
  int hdrlen;


  if (nexthdr == NEXTHDR_NONE) {
   temp |= MASK_NONE;
   break;
  }

  if (len < (int)sizeof(struct ipv6_opt_hdr))
   return 0;

  if (nexthdr == NEXTHDR_ESP) {
   temp |= MASK_ESP;
   break;
  }

  hp = skb_header_pointer(skb, ptr, sizeof(_hdr), &_hdr);
  if (!hp) {
   par->hotdrop = 1;
   return 0;
  }


  if (nexthdr == 130)
   hdrlen = 8;
  else if (nexthdr == 132)
   hdrlen = ipv6_authlen(hp);
  else
   hdrlen = ipv6_optlen(hp);


  switch (nexthdr) {
  case 129:
   temp |= MASK_HOPOPTS;
   break;
  case 128:
   temp |= MASK_ROUTING;
   break;
  case 130:
   temp |= MASK_FRAGMENT;
   break;
  case 132:
   temp |= MASK_AH;
   break;
  case 131:
   temp |= MASK_DSTOPTS;
   break;
  default:
   return 0;
  }

  nexthdr = hp->nexthdr;
  len -= hdrlen;
  ptr += hdrlen;
  if (ptr > skb->len)
   break;
 }

 if (nexthdr != NEXTHDR_NONE && nexthdr != NEXTHDR_ESP)
  temp |= MASK_PROTO;

 if (info->modeflag)
  return !((temp ^ info->matchflags ^ info->invflags)
    & info->matchflags);
 else {
  if (info->invflags)
   return temp != info->matchflags;
  else
   return temp == info->matchflags;
 }
}
