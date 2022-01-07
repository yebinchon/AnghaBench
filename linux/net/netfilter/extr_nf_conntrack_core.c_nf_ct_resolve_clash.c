
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_l4proto {scalar_t__ allow_clash; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {int status; TYPE_1__ ct_general; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPS_NAT_DONE_MASK ;
 int NF_ACCEPT ;
 int NF_CT_STAT_INC (struct net*,int ) ;
 int NF_DROP ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int drop ;
 int nf_conntrack_put (TYPE_1__*) ;
 int nf_ct_acct_merge (struct nf_conn*,int,struct nf_conn*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_is_dying (struct nf_conn*) ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 scalar_t__ nf_ct_match (struct nf_conn*,struct nf_conn*) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;

__attribute__((used)) static int nf_ct_resolve_clash(struct net *net, struct sk_buff *skb,
          enum ip_conntrack_info ctinfo,
          struct nf_conntrack_tuple_hash *h)
{

 struct nf_conn *ct = nf_ct_tuplehash_to_ctrack(h);
 const struct nf_conntrack_l4proto *l4proto;
 enum ip_conntrack_info oldinfo;
 struct nf_conn *loser_ct = nf_ct_get(skb, &oldinfo);

 l4proto = nf_ct_l4proto_find(nf_ct_protonum(ct));
 if (l4proto->allow_clash &&
     !nf_ct_is_dying(ct) &&
     atomic_inc_not_zero(&ct->ct_general.use)) {
  if (((ct->status & IPS_NAT_DONE_MASK) == 0) ||
      nf_ct_match(ct, loser_ct)) {
   nf_ct_acct_merge(ct, ctinfo, loser_ct);
   nf_conntrack_put(&loser_ct->ct_general);
   nf_ct_set(skb, ct, oldinfo);
   return NF_ACCEPT;
  }
  nf_ct_put(ct);
 }
 NF_CT_STAT_INC(net, drop);
 return NF_DROP;
}
