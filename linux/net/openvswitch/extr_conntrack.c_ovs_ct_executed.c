
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow_key {int ct_state; scalar_t__ ct_zone; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;
struct ovs_conntrack_info {int family; TYPE_1__ zone; scalar_t__ force; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;


 int OVS_CS_F_INVALID ;
 int OVS_CS_F_NAT_MASK ;
 int OVS_CS_F_TRACKED ;
 struct nf_conn* ovs_ct_find_existing (struct net*,TYPE_1__*,int ,struct sk_buff*,int) ;

__attribute__((used)) static
struct nf_conn *ovs_ct_executed(struct net *net,
    const struct sw_flow_key *key,
    const struct ovs_conntrack_info *info,
    struct sk_buff *skb,
    bool *ct_executed)
{
 struct nf_conn *ct = ((void*)0);







 *ct_executed = (key->ct_state & OVS_CS_F_TRACKED) &&
         !(key->ct_state & OVS_CS_F_INVALID) &&
         (key->ct_zone == info->zone.id);

 if (*ct_executed || (!key->ct_state && info->force)) {
  ct = ovs_ct_find_existing(net, &info->zone, info->family, skb,
       !!(key->ct_state &
       OVS_CS_F_NAT_MASK));
 }

 return ct;
}
