
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_help {int helper; } ;
struct nf_conn {int dummy; } ;


 int IPCT_HELPER ;
 int RCU_INIT_POINTER (int ,int *) ;
 int nf_conntrack_event (int ,struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 void* rcu_dereference_raw (int ) ;

__attribute__((used)) static int unhelp(struct nf_conn *ct, void *me)
{
 struct nf_conn_help *help = nfct_help(ct);

 if (help && rcu_dereference_raw(help->helper) == me) {
  nf_conntrack_event(IPCT_HELPER, ct);
  RCU_INIT_POINTER(help->helper, ((void*)0));
 }


 return 0;
}
