
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct xt_ipvs_mtinfo {int bitmask; int invert; scalar_t__ l4proto; scalar_t__ vport; scalar_t__ vportctl; int fwd_method; int vmask; int vaddr; } ;
struct xt_action_param {struct xt_ipvs_mtinfo* matchinfo; } ;
struct sk_buff {int ipvs_property; } ;
struct nf_conn {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {struct ip_vs_conn* (* conn_out_get ) (struct netns_ipvs*,int const,struct sk_buff const*,struct ip_vs_iphdr*) ;} ;
struct ip_vs_iphdr {scalar_t__ protocol; } ;
struct ip_vs_conn {scalar_t__ vport; int flags; int vaddr; TYPE_1__* control; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {scalar_t__ vport; } ;


 int IP_CT_IS_REPLY ;
 int IP_VS_CONN_F_FWD_MASK ;
 int XT_IPVS_DIR ;
 int XT_IPVS_IPVS_PROPERTY ;
 int XT_IPVS_METHOD ;
 int XT_IPVS_PROTO ;
 int XT_IPVS_VADDR ;
 int XT_IPVS_VPORT ;
 int XT_IPVS_VPORTCTL ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 int ip_vs_fill_iph_skb (int const,struct sk_buff const*,int,struct ip_vs_iphdr*) ;
 struct ip_vs_protocol* ip_vs_proto_get (scalar_t__) ;
 int ipvs_mt_addrcmp (int *,int *,int *,int const) ;
 struct netns_ipvs* net_ipvs (int ) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 int pr_debug (char*,int) ;
 struct ip_vs_conn* stub1 (struct netns_ipvs*,int const,struct sk_buff const*,struct ip_vs_iphdr*) ;
 scalar_t__ unlikely (int) ;
 int xt_family (struct xt_action_param*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool
ipvs_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_ipvs_mtinfo *data = par->matchinfo;
 struct netns_ipvs *ipvs = net_ipvs(xt_net(par));

 const u_int8_t family = xt_family(par);
 struct ip_vs_iphdr iph;
 struct ip_vs_protocol *pp;
 struct ip_vs_conn *cp;
 bool match = 1;

 if (data->bitmask == XT_IPVS_IPVS_PROPERTY) {
  match = skb->ipvs_property ^
   !!(data->invert & XT_IPVS_IPVS_PROPERTY);
  goto out;
 }


 if (!skb->ipvs_property) {
  match = 0;
  goto out;
 }

 ip_vs_fill_iph_skb(family, skb, 1, &iph);

 if (data->bitmask & XT_IPVS_PROTO)
  if ((iph.protocol == data->l4proto) ^
      !(data->invert & XT_IPVS_PROTO)) {
   match = 0;
   goto out;
  }

 pp = ip_vs_proto_get(iph.protocol);
 if (unlikely(!pp)) {
  match = 0;
  goto out;
 }




 cp = pp->conn_out_get(ipvs, family, skb, &iph);
 if (unlikely(cp == ((void*)0))) {
  match = 0;
  goto out;
 }






 if (data->bitmask & XT_IPVS_VPORT)
  if ((cp->vport == data->vport) ^
      !(data->invert & XT_IPVS_VPORT)) {
   match = 0;
   goto out_put_cp;
  }

 if (data->bitmask & XT_IPVS_VPORTCTL)
  if ((cp->control != ((void*)0) &&
       cp->control->vport == data->vportctl) ^
      !(data->invert & XT_IPVS_VPORTCTL)) {
   match = 0;
   goto out_put_cp;
  }

 if (data->bitmask & XT_IPVS_DIR) {
  enum ip_conntrack_info ctinfo;
  struct nf_conn *ct = nf_ct_get(skb, &ctinfo);

  if (ct == ((void*)0)) {
   match = 0;
   goto out_put_cp;
  }

  if ((ctinfo >= IP_CT_IS_REPLY) ^
      !!(data->invert & XT_IPVS_DIR)) {
   match = 0;
   goto out_put_cp;
  }
 }

 if (data->bitmask & XT_IPVS_METHOD)
  if (((cp->flags & IP_VS_CONN_F_FWD_MASK) == data->fwd_method) ^
      !(data->invert & XT_IPVS_METHOD)) {
   match = 0;
   goto out_put_cp;
  }

 if (data->bitmask & XT_IPVS_VADDR) {
  if (ipvs_mt_addrcmp(&cp->vaddr, &data->vaddr,
        &data->vmask, family) ^
      !(data->invert & XT_IPVS_VADDR)) {
   match = 0;
   goto out_put_cp;
  }
 }

out_put_cp:
 __ip_vs_conn_put(cp);
out:
 pr_debug("match=%d\n", match);
 return match;
}
