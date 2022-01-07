
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nf_conntrack_expect {size_t class; int lnode; int hnode; int timeout; int master; } ;
struct nf_conn_help {int * expecting; } ;
struct TYPE_2__ {int expect_count; } ;
struct net {TYPE_1__ ct; } ;


 int IPEXP_DESTROY ;
 int NF_CT_STAT_INC (struct net*,int ) ;
 int WARN_ON (int) ;
 int expect_delete ;
 int hlist_del_rcu (int *) ;
 struct net* nf_ct_exp_net (struct nf_conntrack_expect*) ;
 int nf_ct_expect_event_report (int ,struct nf_conntrack_expect*,int ,int) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 struct nf_conn_help* nfct_help (int ) ;
 int timer_pending (int *) ;

void nf_ct_unlink_expect_report(struct nf_conntrack_expect *exp,
    u32 portid, int report)
{
 struct nf_conn_help *master_help = nfct_help(exp->master);
 struct net *net = nf_ct_exp_net(exp);

 WARN_ON(!master_help);
 WARN_ON(timer_pending(&exp->timeout));

 hlist_del_rcu(&exp->hnode);
 net->ct.expect_count--;

 hlist_del_rcu(&exp->lnode);
 master_help->expecting[exp->class]--;

 nf_ct_expect_event_report(IPEXP_DESTROY, exp, portid, report);
 nf_ct_expect_put(exp);

 NF_CT_STAT_INC(net, expect_delete);
}
