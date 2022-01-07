
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acct_extend ;
 int nf_ct_extend_register (int *) ;
 int pr_err (char*) ;

int nf_conntrack_acct_init(void)
{
 int ret = nf_ct_extend_register(&acct_extend);
 if (ret < 0)
  pr_err("Unable to register extension\n");
 return ret;
}
