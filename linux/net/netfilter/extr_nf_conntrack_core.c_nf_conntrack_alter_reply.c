
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn_help {int expectations; } ;
struct nf_conn {scalar_t__ master; TYPE_1__* tuplehash; } ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;


 int GFP_ATOMIC ;
 size_t IP_CT_DIR_REPLY ;
 int WARN_ON (int ) ;
 int __nf_ct_try_assign_helper (struct nf_conn*,int *,int ) ;
 int hlist_empty (int *) ;
 int nf_ct_dump_tuple (struct nf_conntrack_tuple const*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int pr_debug (char*,struct nf_conn*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nf_conntrack_alter_reply(struct nf_conn *ct,
         const struct nf_conntrack_tuple *newreply)
{
 struct nf_conn_help *help = nfct_help(ct);


 WARN_ON(nf_ct_is_confirmed(ct));

 pr_debug("Altering reply tuple of %p to ", ct);
 nf_ct_dump_tuple(newreply);

 ct->tuplehash[IP_CT_DIR_REPLY].tuple = *newreply;
 if (ct->master || (help && !hlist_empty(&help->expectations)))
  return;

 rcu_read_lock();
 __nf_ct_try_assign_helper(ct, ((void*)0), GFP_ATOMIC);
 rcu_read_unlock();
}
