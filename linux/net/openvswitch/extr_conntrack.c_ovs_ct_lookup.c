
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int zone; int family; } ;
struct nf_conntrack_expect {int master; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;


 int OVS_CS_F_NEW ;
 int OVS_CS_F_RELATED ;
 int OVS_CS_F_TRACKED ;
 int __ovs_ct_lookup (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ;
 int __ovs_ct_update_key (struct sw_flow_key*,int,int *,int ) ;
 int nf_ct_deliver_cached_events (struct nf_conn*) ;
 struct nf_conntrack_expect* ovs_ct_expect_find (struct net*,int *,int ,struct sk_buff*) ;
 scalar_t__ skb_nfct (struct sk_buff*) ;

__attribute__((used)) static int ovs_ct_lookup(struct net *net, struct sw_flow_key *key,
    const struct ovs_conntrack_info *info,
    struct sk_buff *skb)
{
 struct nf_conntrack_expect *exp;
 exp = ovs_ct_expect_find(net, &info->zone, info->family, skb);
 if (exp) {
  u8 state;




  state = OVS_CS_F_TRACKED | OVS_CS_F_NEW | OVS_CS_F_RELATED;
  __ovs_ct_update_key(key, state, &info->zone, exp->master);
 } else {
  struct nf_conn *ct;
  int err;

  err = __ovs_ct_lookup(net, key, info, skb);
  if (err)
   return err;

  ct = (struct nf_conn *)skb_nfct(skb);
  if (ct)
   nf_ct_deliver_cached_events(ct);
 }

 return 0;
}
