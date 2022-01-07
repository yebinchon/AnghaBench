
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;
 int nfsd_nlm_ops ;
 int * nlmsvc_ops ;

void
nfsd_lockd_init(void)
{
 dprintk("nfsd: initializing lockd\n");
 nlmsvc_ops = &nfsd_nlm_ops;
}
