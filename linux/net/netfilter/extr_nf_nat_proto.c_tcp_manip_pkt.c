
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


struct tcphdr {int check; int dest; int source; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_10__ {int port; } ;
struct TYPE_11__ {TYPE_4__ tcp; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_7__ {int port; } ;
struct TYPE_8__ {TYPE_1__ tcp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_3__ src; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be16 ;


 int NF_NAT_MANIP_SRC ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int) ;
 int nf_csum_update (struct sk_buff*,unsigned int,int *,struct nf_conntrack_tuple const*,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
tcp_manip_pkt(struct sk_buff *skb,
       unsigned int iphdroff, unsigned int hdroff,
       const struct nf_conntrack_tuple *tuple,
       enum nf_nat_manip_type maniptype)
{
 struct tcphdr *hdr;
 __be16 *portptr, newport, oldport;
 int hdrsize = 8;




 if (skb->len >= hdroff + sizeof(struct tcphdr))
  hdrsize = sizeof(struct tcphdr);

 if (skb_ensure_writable(skb, hdroff + hdrsize))
  return 0;

 hdr = (struct tcphdr *)(skb->data + hdroff);

 if (maniptype == NF_NAT_MANIP_SRC) {

  newport = tuple->src.u.tcp.port;
  portptr = &hdr->source;
 } else {

  newport = tuple->dst.u.tcp.port;
  portptr = &hdr->dest;
 }

 oldport = *portptr;
 *portptr = newport;

 if (hdrsize < sizeof(*hdr))
  return 1;

 nf_csum_update(skb, iphdroff, &hdr->check, tuple, maniptype);
 inet_proto_csum_replace2(&hdr->check, skb, oldport, newport, 0);
 return 1;
}
