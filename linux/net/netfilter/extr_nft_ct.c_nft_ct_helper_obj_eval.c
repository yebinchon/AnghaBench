
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int dummy; } ;
struct nft_pktinfo {int skb; } ;
struct nft_object {int dummy; } ;
struct nft_ct_helper_obj {scalar_t__ l4proto; struct nf_conntrack_helper* helper6; struct nf_conntrack_helper* helper4; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int status; } ;


 int GFP_ATOMIC ;
 int IPS_HELPER_BIT ;


 int WARN_ON_ONCE (int) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 scalar_t__ nf_ct_is_template (struct nf_conn*) ;
 int nf_ct_l3num (struct nf_conn*) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;
 struct nft_ct_helper_obj* nft_obj_data (struct nft_object*) ;
 int rcu_assign_pointer (int ,struct nf_conntrack_helper*) ;
 int set_bit (int ,int *) ;
 scalar_t__ skb_nfct (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nft_ct_helper_obj_eval(struct nft_object *obj,
       struct nft_regs *regs,
       const struct nft_pktinfo *pkt)
{
 const struct nft_ct_helper_obj *priv = nft_obj_data(obj);
 struct nf_conn *ct = (struct nf_conn *)skb_nfct(pkt->skb);
 struct nf_conntrack_helper *to_assign = ((void*)0);
 struct nf_conn_help *help;

 if (!ct ||
     nf_ct_is_confirmed(ct) ||
     nf_ct_is_template(ct) ||
     priv->l4proto != nf_ct_protonum(ct))
  return;

 switch (nf_ct_l3num(ct)) {
 case 129:
  to_assign = priv->helper4;
  break;
 case 128:
  to_assign = priv->helper6;
  break;
 default:
  WARN_ON_ONCE(1);
  return;
 }

 if (!to_assign)
  return;

 if (test_bit(IPS_HELPER_BIT, &ct->status))
  return;

 help = nf_ct_helper_ext_add(ct, GFP_ATOMIC);
 if (help) {
  rcu_assign_pointer(help->helper, to_assign);
  set_bit(IPS_HELPER_BIT, &ct->status);
 }
}
