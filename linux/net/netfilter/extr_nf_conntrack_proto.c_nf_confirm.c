
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int (* help ) (struct sk_buff*,unsigned int,struct nf_conn*,int) ;} ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int status; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPS_SEQ_ADJUST_BIT ;
 int NF_ACCEPT ;
 int NF_CT_STAT_INC_ATOMIC (int ,int ) ;
 unsigned int NF_DROP ;
 int drop ;
 unsigned int nf_conntrack_confirm (struct sk_buff*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_ct_seq_adjust (struct sk_buff*,struct nf_conn*,int,unsigned int) ;
 int nf_is_loopback_packet (struct sk_buff*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,unsigned int,struct nf_conn*,int) ;
 scalar_t__ test_bit (int ,int *) ;

unsigned int nf_confirm(struct sk_buff *skb, unsigned int protoff,
   struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
 const struct nf_conn_help *help;

 help = nfct_help(ct);
 if (help) {
  const struct nf_conntrack_helper *helper;
  int ret;


  helper = rcu_dereference(help->helper);
  if (helper) {
   ret = helper->help(skb,
        protoff,
        ct, ctinfo);
   if (ret != NF_ACCEPT)
    return ret;
  }
 }

 if (test_bit(IPS_SEQ_ADJUST_BIT, &ct->status) &&
     !nf_is_loopback_packet(skb)) {
  if (!nf_ct_seq_adjust(skb, ct, ctinfo, protoff)) {
   NF_CT_STAT_INC_ATOMIC(nf_ct_net(ct), drop);
   return NF_DROP;
  }
 }


 return nf_conntrack_confirm(skb);
}
