
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {scalar_t__ help; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {int status; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int IPS_HELPER_BIT ;
 int RCU_INIT_POINTER (struct nf_conntrack_helper*,int *) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 struct nf_conntrack_helper* nf_ct_lookup_helper (struct nf_conn*,struct net*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int rcu_assign_pointer (struct nf_conntrack_helper*,struct nf_conntrack_helper*) ;
 struct nf_conntrack_helper* rcu_dereference (struct nf_conntrack_helper*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int __nf_ct_try_assign_helper(struct nf_conn *ct, struct nf_conn *tmpl,
         gfp_t flags)
{
 struct nf_conntrack_helper *helper = ((void*)0);
 struct nf_conn_help *help;
 struct net *net = nf_ct_net(ct);







 if (test_bit(IPS_HELPER_BIT, &ct->status))
  return 0;

 if (tmpl != ((void*)0)) {
  help = nfct_help(tmpl);
  if (help != ((void*)0)) {
   helper = help->helper;
   set_bit(IPS_HELPER_BIT, &ct->status);
  }
 }

 help = nfct_help(ct);

 if (helper == ((void*)0)) {
  helper = nf_ct_lookup_helper(ct, net);
  if (helper == ((void*)0)) {
   if (help)
    RCU_INIT_POINTER(help->helper, ((void*)0));
   return 0;
  }
 }

 if (help == ((void*)0)) {
  help = nf_ct_helper_ext_add(ct, flags);
  if (help == ((void*)0))
   return -ENOMEM;
 } else {



  struct nf_conntrack_helper *tmp = rcu_dereference(help->helper);

  if (tmp && tmp->help != helper->help) {
   RCU_INIT_POINTER(help->helper, ((void*)0));
   return 0;
  }
 }

 rcu_assign_pointer(help->helper, helper);

 return 0;
}
