
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
struct pptp_gre_header {int flags; scalar_t__ protocol; int call_id; } ;
struct TYPE_10__ {int key; } ;
struct TYPE_11__ {TYPE_4__ gre; scalar_t__ all; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_1__ gre; scalar_t__ all; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ src; TYPE_3__ dst; } ;
struct net {int dummy; } ;
struct gre_base_hdr {int flags; scalar_t__ protocol; int call_id; } ;
typedef int _grehdr ;
typedef int __be16 ;


 scalar_t__ GRE_PROTO_PPP ;
 int GRE_VERSION ;
 int GRE_VERSION_1 ;
 int gre_keymap_lookup (struct net*,struct nf_conntrack_tuple*) ;
 int ntohs (scalar_t__) ;
 int pr_debug (char*,int ) ;
 struct pptp_gre_header* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct pptp_gre_header*) ;

bool gre_pkt_to_tuple(const struct sk_buff *skb, unsigned int dataoff,
        struct net *net, struct nf_conntrack_tuple *tuple)
{
 const struct pptp_gre_header *pgrehdr;
 struct pptp_gre_header _pgrehdr;
 __be16 srckey;
 const struct gre_base_hdr *grehdr;
 struct gre_base_hdr _grehdr;


 grehdr = skb_header_pointer(skb, dataoff, sizeof(_grehdr), &_grehdr);
 if (!grehdr || (grehdr->flags & GRE_VERSION) != GRE_VERSION_1) {

  tuple->src.u.all = 0;
  tuple->dst.u.all = 0;
  return 1;
 }


 pgrehdr = skb_header_pointer(skb, dataoff, 8, &_pgrehdr);
 if (!pgrehdr)
  return 1;

 if (grehdr->protocol != GRE_PROTO_PPP) {
  pr_debug("Unsupported GRE proto(0x%x)\n", ntohs(grehdr->protocol));
  return 0;
 }

 tuple->dst.u.gre.key = pgrehdr->call_id;
 srckey = gre_keymap_lookup(net, tuple);
 tuple->src.u.gre.key = srckey;

 return 1;
}
