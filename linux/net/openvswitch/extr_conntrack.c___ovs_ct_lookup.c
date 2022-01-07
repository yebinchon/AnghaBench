
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int ct_state; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int commit; int family; scalar_t__ nat; struct nf_conn* ct; scalar_t__ helper; } ;
struct nf_hook_state {struct net* net; int pf; int hook; } ;
struct nf_conn {int ct_general; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int EINVAL ;
 int ENOENT ;
 int GFP_ATOMIC ;
 int IP_CT_NEW ;
 int NF_ACCEPT ;
 int NF_INET_PRE_ROUTING ;
 int OVS_CS_F_NAT_MASK ;
 int __nf_ct_try_assign_helper (struct nf_conn*,struct nf_conn*,int ) ;
 int nf_conntrack_get (int *) ;
 int nf_conntrack_in (struct sk_buff*,struct nf_hook_state*) ;
 int nf_conntrack_put (scalar_t__) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int ) ;
 int nfct_help (struct nf_conn*) ;
 int nfct_seqadj (struct nf_conn*) ;
 int nfct_seqadj_ext_add (struct nf_conn*) ;
 int ovs_ct_helper (struct sk_buff*,int ) ;
 int ovs_ct_nat (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*,struct nf_conn*,int) ;
 int ovs_ct_update_key (struct sk_buff*,struct ovs_conntrack_info const*,struct sw_flow_key*,int,int) ;
 scalar_t__ skb_nfct (struct sk_buff*) ;
 int skb_nfct_cached (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ;

__attribute__((used)) static int __ovs_ct_lookup(struct net *net, struct sw_flow_key *key,
      const struct ovs_conntrack_info *info,
      struct sk_buff *skb)
{





 bool cached = skb_nfct_cached(net, key, info, skb);
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;

 if (!cached) {
  struct nf_hook_state state = {
   .hook = NF_INET_PRE_ROUTING,
   .pf = info->family,
   .net = net,
  };
  struct nf_conn *tmpl = info->ct;
  int err;


  if (tmpl) {
   if (skb_nfct(skb))
    nf_conntrack_put(skb_nfct(skb));
   nf_conntrack_get(&tmpl->ct_general);
   nf_ct_set(skb, tmpl, IP_CT_NEW);
  }

  err = nf_conntrack_in(skb, &state);
  if (err != NF_ACCEPT)
   return -ENOENT;





  key->ct_state = 0;


  ovs_ct_update_key(skb, info, key, 1, 1);
 }

 ct = nf_ct_get(skb, &ctinfo);
 if (ct) {
  if (info->nat && !(key->ct_state & OVS_CS_F_NAT_MASK) &&
      (nf_ct_is_confirmed(ct) || info->commit) &&
      ovs_ct_nat(net, key, info, skb, ct, ctinfo) != NF_ACCEPT) {
   return -EINVAL;
  }






  if (!nf_ct_is_confirmed(ct) && info->commit &&
      info->helper && !nfct_help(ct)) {
   int err = __nf_ct_try_assign_helper(ct, info->ct,
           GFP_ATOMIC);
   if (err)
    return err;


   if (info->nat && !nfct_seqadj(ct)) {
    if (!nfct_seqadj_ext_add(ct))
     return -EINVAL;
   }
  }






  if ((nf_ct_is_confirmed(ct) ? !cached : info->commit) &&
      ovs_ct_helper(skb, info->family) != NF_ACCEPT) {
   return -EINVAL;
  }
 }

 return 0;
}
