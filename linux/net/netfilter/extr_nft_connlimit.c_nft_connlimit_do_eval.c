
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nft_set_ext {int dummy; } ;
struct TYPE_5__ {void* code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct nft_pktinfo {int skb; } ;
struct TYPE_6__ {unsigned int count; } ;
struct nft_connlimit {unsigned int limit; int invert; TYPE_3__ list; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {struct nf_conntrack_tuple tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 void* NFT_BREAK ;
 void* NF_DROP ;
 scalar_t__ nf_conncount_add (int ,TYPE_3__*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*) ;
 struct nf_conn* nf_ct_get (int ,int*) ;
 int nf_ct_get_tuplepr (int ,int ,int ,int ,struct nf_conntrack_tuple*) ;
 struct nf_conntrack_zone* nf_ct_zone (struct nf_conn const*) ;
 struct nf_conntrack_zone nf_ct_zone_dflt ;
 int nft_net (struct nft_pktinfo const*) ;
 int nft_pf (struct nft_pktinfo const*) ;
 int skb_network_offset (int ) ;

__attribute__((used)) static inline void nft_connlimit_do_eval(struct nft_connlimit *priv,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt,
      const struct nft_set_ext *ext)
{
 const struct nf_conntrack_zone *zone = &nf_ct_zone_dflt;
 const struct nf_conntrack_tuple *tuple_ptr;
 struct nf_conntrack_tuple tuple;
 enum ip_conntrack_info ctinfo;
 const struct nf_conn *ct;
 unsigned int count;

 tuple_ptr = &tuple;

 ct = nf_ct_get(pkt->skb, &ctinfo);
 if (ct != ((void*)0)) {
  tuple_ptr = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
  zone = nf_ct_zone(ct);
 } else if (!nf_ct_get_tuplepr(pkt->skb, skb_network_offset(pkt->skb),
          nft_pf(pkt), nft_net(pkt), &tuple)) {
  regs->verdict.code = NF_DROP;
  return;
 }

 if (nf_conncount_add(nft_net(pkt), &priv->list, tuple_ptr, zone)) {
  regs->verdict.code = NF_DROP;
  return;
 }

 count = priv->list.count;

 if ((count > priv->limit) ^ priv->invert) {
  regs->verdict.code = NFT_BREAK;
  return;
 }
}
