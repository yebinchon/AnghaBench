
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_help {int expectations; } ;
struct nf_conn {int dummy; } ;
typedef int gfp_t ;


 int INIT_HLIST_HEAD (int *) ;
 int NF_CT_EXT_HELPER ;
 struct nf_conn_help* nf_ct_ext_add (struct nf_conn*,int ,int ) ;
 int pr_debug (char*) ;

struct nf_conn_help *
nf_ct_helper_ext_add(struct nf_conn *ct, gfp_t gfp)
{
 struct nf_conn_help *help;

 help = nf_ct_ext_add(ct, NF_CT_EXT_HELPER, gfp);
 if (help)
  INIT_HLIST_HEAD(&help->expectations);
 else
  pr_debug("failed to add helper extension area");
 return help;
}
