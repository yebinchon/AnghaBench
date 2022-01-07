
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {scalar_t__ helper; scalar_t__ nf_ct_timeout; scalar_t__ force; int ct; } ;
struct nf_conn_timeout {int timeout; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int ct_general; int ct_net; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ CTINFO2DIR (int) ;
 scalar_t__ IP_CT_DIR_ORIGINAL ;
 int NF_CT_EXT_HELPER ;
 int net_eq (struct net*,int ) ;
 int nf_conntrack_put (int *) ;
 int nf_ct_delete (struct nf_conn*,int ,int ) ;
 struct nf_conn_help* nf_ct_ext_find (struct nf_conn*,int ) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_set (struct sk_buff*,int *,int ) ;
 struct nf_conn_timeout* nf_ct_timeout_find (struct nf_conn*) ;
 int nf_ct_zone (struct nf_conn*) ;
 int nf_ct_zone_equal_any (int ,int ) ;
 struct nf_conn* ovs_ct_executed (struct net*,struct sw_flow_key const*,struct ovs_conntrack_info const*,struct sk_buff*,int*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 scalar_t__ rcu_dereference (int ) ;
 int read_pnet (int *) ;

__attribute__((used)) static bool skb_nfct_cached(struct net *net,
       const struct sw_flow_key *key,
       const struct ovs_conntrack_info *info,
       struct sk_buff *skb)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;
 bool ct_executed = 1;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct)
  ct = ovs_ct_executed(net, key, info, skb, &ct_executed);

 if (ct)
  nf_ct_get(skb, &ctinfo);
 else
  return 0;

 if (!net_eq(net, read_pnet(&ct->ct_net)))
  return 0;
 if (!nf_ct_zone_equal_any(info->ct, nf_ct_zone(ct)))
  return 0;
 if (info->helper) {
  struct nf_conn_help *help;

  help = nf_ct_ext_find(ct, NF_CT_EXT_HELPER);
  if (help && rcu_access_pointer(help->helper) != info->helper)
   return 0;
 }
 if (info->nf_ct_timeout) {
  struct nf_conn_timeout *timeout_ext;

  timeout_ext = nf_ct_timeout_find(ct);
  if (!timeout_ext || info->nf_ct_timeout !=
      rcu_dereference(timeout_ext->timeout))
   return 0;
 }

 if (info->force && CTINFO2DIR(ctinfo) != IP_CT_DIR_ORIGINAL) {



  if (nf_ct_is_confirmed(ct))
   nf_ct_delete(ct, 0, 0);

  nf_conntrack_put(&ct->ct_general);
  nf_ct_set(skb, ((void*)0), 0);
  return 0;
 }

 return ct_executed;
}
