
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nf_conntrack_helper {TYPE_1__* expect_policy; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {size_t class; int hnode; int lnode; TYPE_3__ timeout; int use; int tuple; int master; } ;
struct nf_conn_help {int * expecting; int expectations; int helper; } ;
struct TYPE_6__ {int expect_count; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_5__ {int timeout; } ;


 int HZ ;
 int NF_CT_STAT_INC (struct net*,int ) ;
 int add_timer (TYPE_3__*) ;
 int expect_create ;
 int hlist_add_head_rcu (int *,int *) ;
 scalar_t__ jiffies ;
 int lockdep_is_held (int *) ;
 int nf_conntrack_expect_lock ;
 struct net* nf_ct_exp_net (struct nf_conntrack_expect*) ;
 unsigned int nf_ct_expect_dst_hash (struct net*,int *) ;
 int * nf_ct_expect_hash ;
 int nf_ct_expectation_timed_out ;
 struct nf_conn_help* nfct_help (int ) ;
 struct nf_conntrack_helper* rcu_dereference_protected (int ,int ) ;
 int refcount_add (int,int *) ;
 int timer_setup (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void nf_ct_expect_insert(struct nf_conntrack_expect *exp)
{
 struct nf_conn_help *master_help = nfct_help(exp->master);
 struct nf_conntrack_helper *helper;
 struct net *net = nf_ct_exp_net(exp);
 unsigned int h = nf_ct_expect_dst_hash(net, &exp->tuple);


 refcount_add(2, &exp->use);

 timer_setup(&exp->timeout, nf_ct_expectation_timed_out, 0);
 helper = rcu_dereference_protected(master_help->helper,
        lockdep_is_held(&nf_conntrack_expect_lock));
 if (helper) {
  exp->timeout.expires = jiffies +
   helper->expect_policy[exp->class].timeout * HZ;
 }
 add_timer(&exp->timeout);

 hlist_add_head_rcu(&exp->lnode, &master_help->expectations);
 master_help->expecting[exp->class]++;

 hlist_add_head_rcu(&exp->hnode, &nf_ct_expect_hash[h]);
 net->ct.expect_count++;

 NF_CT_STAT_INC(net, expect_create);
}
