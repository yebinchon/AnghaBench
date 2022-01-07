
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_10__ {int code; int type; } ;
struct TYPE_12__ {TYPE_4__ icmp; } ;
struct TYPE_11__ {TYPE_6__ u; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ icmp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_5__ dst; TYPE_3__ src; } ;
struct net {int dummy; } ;
struct icmp6hdr {int icmp6_code; int icmp6_identifier; int icmp6_type; } ;
typedef int _hdr ;


 struct icmp6hdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct icmp6hdr*) ;

bool icmpv6_pkt_to_tuple(const struct sk_buff *skb,
    unsigned int dataoff,
    struct net *net,
    struct nf_conntrack_tuple *tuple)
{
 const struct icmp6hdr *hp;
 struct icmp6hdr _hdr;

 hp = skb_header_pointer(skb, dataoff, sizeof(_hdr), &_hdr);
 if (hp == ((void*)0))
  return 0;
 tuple->dst.u.icmp.type = hp->icmp6_type;
 tuple->src.u.icmp.id = hp->icmp6_identifier;
 tuple->dst.u.icmp.code = hp->icmp6_code;

 return 1;
}
