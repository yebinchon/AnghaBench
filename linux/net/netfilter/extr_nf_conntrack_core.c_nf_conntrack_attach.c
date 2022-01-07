
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ CTINFO2DIR (int) ;
 scalar_t__ IP_CT_DIR_ORIGINAL ;
 int IP_CT_RELATED ;
 int IP_CT_RELATED_REPLY ;
 int nf_conntrack_get (int ) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int) ;
 int skb_nfct (struct sk_buff*) ;

__attribute__((used)) static void nf_conntrack_attach(struct sk_buff *nskb, const struct sk_buff *skb)
{
 struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;


 ct = nf_ct_get(skb, &ctinfo);
 if (CTINFO2DIR(ctinfo) == IP_CT_DIR_ORIGINAL)
  ctinfo = IP_CT_RELATED_REPLY;
 else
  ctinfo = IP_CT_RELATED;


 nf_ct_set(nskb, ct, ctinfo);
 nf_conntrack_get(skb_nfct(nskb));
}
