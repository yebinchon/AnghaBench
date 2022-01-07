
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ct_extend_register (int *) ;
 int pr_err (char*) ;
 int timeout_extend ;

int nf_conntrack_timeout_init(void)
{
 int ret = nf_ct_extend_register(&timeout_extend);
 if (ret < 0)
  pr_err("nf_ct_timeout: Unable to register timeout extension.\n");
 return ret;
}
