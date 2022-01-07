
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ct_extend_register (int *) ;
 int pr_err (char*) ;
 int tstamp_extend ;

int nf_conntrack_tstamp_init(void)
{
 int ret;
 ret = nf_ct_extend_register(&tstamp_extend);
 if (ret < 0)
  pr_err("Unable to register extension\n");
 return ret;
}
