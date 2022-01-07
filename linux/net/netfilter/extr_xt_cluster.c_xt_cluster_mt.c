
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_cluster_match_info {int node_mask; int flags; } ;
struct xt_action_param {struct xt_cluster_match_info* matchinfo; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct nf_conn {struct nf_conn const* master; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_MULTICAST ;
 int XT_CLUSTER_F_INV ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 unsigned long xt_cluster_hash (struct nf_conn const*,struct xt_cluster_match_info const*) ;
 int xt_cluster_is_multicast_addr (struct sk_buff const*,int ) ;
 int xt_family (struct xt_action_param*) ;

__attribute__((used)) static bool
xt_cluster_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 struct sk_buff *pskb = (struct sk_buff *)skb;
 const struct xt_cluster_match_info *info = par->matchinfo;
 const struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 unsigned long hash;
 if (!xt_cluster_is_multicast_addr(skb, xt_family(par)) &&
     skb->pkt_type == PACKET_MULTICAST) {
      pskb->pkt_type = PACKET_HOST;
 }

 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0))
  return 0;

 if (ct->master)
  hash = xt_cluster_hash(ct->master, info);
 else
  hash = xt_cluster_hash(ct, info);

 return !!((1 << hash) & info->node_mask) ^
        !!(info->flags & XT_CLUSTER_F_INV);
}
