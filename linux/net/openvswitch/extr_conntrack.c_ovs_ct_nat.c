
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int NF_ACCEPT ;

__attribute__((used)) static int ovs_ct_nat(struct net *net, struct sw_flow_key *key,
        const struct ovs_conntrack_info *info,
        struct sk_buff *skb, struct nf_conn *ct,
        enum ip_conntrack_info ctinfo)
{
 return NF_ACCEPT;
}
