
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ code; } ;
struct TYPE_3__ {int src; int dst; } ;
union pkthdr {scalar_t__ nexthdr; TYPE_2__ icmphdr; TYPE_1__ tcpudphdr; int daddr; int saddr; } ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ u16 ;
struct xt_action_param {struct ebt_ip6_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; TYPE_2__ icmphdr; TYPE_1__ tcpudphdr; int daddr; int saddr; } ;
struct ebt_ip6_info {int bitmask; scalar_t__ tclass; scalar_t__ protocol; scalar_t__* dport; scalar_t__* sport; scalar_t__* icmpv6_type; scalar_t__* icmpv6_code; int daddr; int dmsk; int saddr; int smsk; } ;
typedef int _pkthdr ;
typedef int _ip6h ;
typedef int __be16 ;


 int EBT_IP6_DEST ;
 int EBT_IP6_DPORT ;
 int EBT_IP6_ICMP6 ;
 int EBT_IP6_PROTO ;
 int EBT_IP6_SOURCE ;
 int EBT_IP6_SPORT ;
 int EBT_IP6_TCLASS ;
 scalar_t__ NF_INVF (struct ebt_ip6_info const*,int,int) ;
 scalar_t__ ipv6_get_dsfield (union pkthdr const*) ;
 int ipv6_masked_addr_cmp (int *,int *,int *) ;
 int ipv6_skip_exthdr (struct sk_buff const*,int,scalar_t__*,int *) ;
 scalar_t__ ntohs (int ) ;
 union pkthdr* skb_header_pointer (struct sk_buff const*,int,int,union pkthdr*) ;

__attribute__((used)) static bool
ebt_ip6_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ebt_ip6_info *info = par->matchinfo;
 const struct ipv6hdr *ih6;
 struct ipv6hdr _ip6h;
 const union pkthdr *pptr;
 union pkthdr _pkthdr;

 ih6 = skb_header_pointer(skb, 0, sizeof(_ip6h), &_ip6h);
 if (ih6 == ((void*)0))
  return 0;
 if ((info->bitmask & EBT_IP6_TCLASS) &&
     NF_INVF(info, EBT_IP6_TCLASS,
      info->tclass != ipv6_get_dsfield(ih6)))
  return 0;
 if (((info->bitmask & EBT_IP6_SOURCE) &&
      NF_INVF(info, EBT_IP6_SOURCE,
       ipv6_masked_addr_cmp(&ih6->saddr, &info->smsk,
       &info->saddr))) ||
     ((info->bitmask & EBT_IP6_DEST) &&
      NF_INVF(info, EBT_IP6_DEST,
       ipv6_masked_addr_cmp(&ih6->daddr, &info->dmsk,
       &info->daddr))))
  return 0;
 if (info->bitmask & EBT_IP6_PROTO) {
  uint8_t nexthdr = ih6->nexthdr;
  __be16 frag_off;
  int offset_ph;

  offset_ph = ipv6_skip_exthdr(skb, sizeof(_ip6h), &nexthdr, &frag_off);
  if (offset_ph == -1)
   return 0;
  if (NF_INVF(info, EBT_IP6_PROTO, info->protocol != nexthdr))
   return 0;
  if (!(info->bitmask & (EBT_IP6_DPORT |
           EBT_IP6_SPORT | EBT_IP6_ICMP6)))
   return 1;


  pptr = skb_header_pointer(skb, offset_ph, sizeof(_pkthdr),
       &_pkthdr);
  if (pptr == ((void*)0))
   return 0;
  if (info->bitmask & EBT_IP6_DPORT) {
   u16 dst = ntohs(pptr->tcpudphdr.dst);
   if (NF_INVF(info, EBT_IP6_DPORT,
        dst < info->dport[0] ||
        dst > info->dport[1]))
    return 0;
  }
  if (info->bitmask & EBT_IP6_SPORT) {
   u16 src = ntohs(pptr->tcpudphdr.src);
   if (NF_INVF(info, EBT_IP6_SPORT,
        src < info->sport[0] ||
        src > info->sport[1]))
    return 0;
  }
  if ((info->bitmask & EBT_IP6_ICMP6) &&
      NF_INVF(info, EBT_IP6_ICMP6,
       pptr->icmphdr.type < info->icmpv6_type[0] ||
       pptr->icmphdr.type > info->icmpv6_type[1] ||
       pptr->icmphdr.code < info->icmpv6_code[0] ||
       pptr->icmphdr.code > info->icmpv6_code[1]))
   return 0;
 }
 return 1;
}
