
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int flags; int queue_num; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int NF_ACCEPT ;
 int NF_CT_HELPER_F_CONFIGURED ;
 int NF_CT_HELPER_F_USERSPACE ;
 int NF_DROP ;
 int NF_QUEUE_NR (int ) ;
 int NF_VERDICT_FLAG_QUEUE_BYPASS ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;

__attribute__((used)) static int
nfnl_userspace_cthelper(struct sk_buff *skb, unsigned int protoff,
   struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
 const struct nf_conn_help *help;
 struct nf_conntrack_helper *helper;

 help = nfct_help(ct);
 if (help == ((void*)0))
  return NF_DROP;


 helper = rcu_dereference(help->helper);
 if (helper == ((void*)0))
  return NF_DROP;


 if ((helper->flags &
     (NF_CT_HELPER_F_USERSPACE | NF_CT_HELPER_F_CONFIGURED)) ==
      NF_CT_HELPER_F_USERSPACE)
  return NF_ACCEPT;


 return NF_QUEUE_NR(helper->queue_num) | NF_VERDICT_FLAG_QUEUE_BYPASS;
}
