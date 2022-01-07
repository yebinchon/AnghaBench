
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int dummy; } ;
struct nf_conntrack_expect {struct nf_conntrack_helper const* helper; int master; } ;
struct nf_conn_help {int helper; } ;


 int lockdep_is_held (int *) ;
 int nf_conntrack_expect_lock ;
 struct nf_conn_help* nfct_help (int ) ;
 struct nf_conntrack_helper* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static bool expect_iter_me(struct nf_conntrack_expect *exp, void *data)
{
 struct nf_conn_help *help = nfct_help(exp->master);
 const struct nf_conntrack_helper *me = data;
 const struct nf_conntrack_helper *this;

 if (exp->helper == me)
  return 1;

 this = rcu_dereference_protected(help->helper,
      lockdep_is_held(&nf_conntrack_expect_lock));
 return this == me;
}
