
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct nf_nat_range2* targinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_nat_range2 {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IP_CT_NEW ;
 int IP_CT_RELATED ;
 int NF_NAT_MANIP_DST ;
 int WARN_ON (int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int nf_nat_setup_info (struct nf_conn*,struct nf_nat_range2 const*,int ) ;

__attribute__((used)) static unsigned int
xt_dnat_target_v2(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct nf_nat_range2 *range = par->targinfo;
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;

 ct = nf_ct_get(skb, &ctinfo);
 WARN_ON(!(ct != ((void*)0) &&
   (ctinfo == IP_CT_NEW || ctinfo == IP_CT_RELATED)));

 return nf_nat_setup_info(ct, range, NF_NAT_MANIP_DST);
}
