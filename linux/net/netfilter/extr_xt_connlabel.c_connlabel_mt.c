
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_connlabel_mtinfo {int options; int bit; } ;
struct xt_action_param {struct xt_connlabel_mtinfo* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_conn_labels {int bits; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPCT_LABEL ;
 int XT_CONNLABEL_OP_INVERT ;
 int XT_CONNLABEL_OP_SET ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 struct nf_conn_labels* nf_ct_labels_find (struct nf_conn*) ;
 int test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static bool
connlabel_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_connlabel_mtinfo *info = par->matchinfo;
 enum ip_conntrack_info ctinfo;
 struct nf_conn_labels *labels;
 struct nf_conn *ct;
 bool invert = info->options & XT_CONNLABEL_OP_INVERT;

 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0))
  return invert;

 labels = nf_ct_labels_find(ct);
 if (!labels)
  return invert;

 if (test_bit(info->bit, labels->bits))
  return !invert;

 if (info->options & XT_CONNLABEL_OP_SET) {
  if (!test_and_set_bit(info->bit, labels->bits))
   nf_conntrack_event_cache(IPCT_LABEL, ct);

  return !invert;
 }

 return invert;
}
