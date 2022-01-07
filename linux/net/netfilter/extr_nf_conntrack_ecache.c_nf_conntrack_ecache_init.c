
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int __IPCT_MAX ;
 int event_extend ;
 int nf_ct_extend_register (int *) ;
 int pr_err (char*) ;

int nf_conntrack_ecache_init(void)
{
 int ret = nf_ct_extend_register(&event_extend);
 if (ret < 0)
  pr_err("Unable to register event extension\n");

 BUILD_BUG_ON(__IPCT_MAX >= 16);

 return ret;
}
