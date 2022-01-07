
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int (* destroy ) (struct nf_conn*) ;} ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int dummy; } ;


 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nf_conn*) ;

void nf_ct_helper_destroy(struct nf_conn *ct)
{
 struct nf_conn_help *help = nfct_help(ct);
 struct nf_conntrack_helper *helper;

 if (help) {
  rcu_read_lock();
  helper = rcu_dereference(help->helper);
  if (helper && helper->destroy)
   helper->destroy(ct);
  rcu_read_unlock();
 }
}
