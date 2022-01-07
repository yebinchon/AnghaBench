
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_15__ {int code; int type; } ;
struct TYPE_16__ {TYPE_7__ icmp; } ;
struct TYPE_14__ {TYPE_8__ u; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {TYPE_1__ icmp; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_3__ src; } ;
struct net {int dummy; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_13__ {TYPE_4__ echo; } ;
struct icmphdr {int code; TYPE_5__ un; int type; } ;
typedef int _hdr ;


 struct icmphdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct icmphdr*) ;

bool icmp_pkt_to_tuple(const struct sk_buff *skb, unsigned int dataoff,
         struct net *net, struct nf_conntrack_tuple *tuple)
{
 const struct icmphdr *hp;
 struct icmphdr _hdr;

 hp = skb_header_pointer(skb, dataoff, sizeof(_hdr), &_hdr);
 if (hp == ((void*)0))
  return 0;

 tuple->dst.u.icmp.type = hp->type;
 tuple->src.u.icmp.id = hp->un.echo.id;
 tuple->dst.u.icmp.code = hp->code;

 return 1;
}
