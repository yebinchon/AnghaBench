
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_net ;
 int svc_proc_unregister (int *,char*) ;

void
nfsd_stat_shutdown(void)
{
 svc_proc_unregister(&init_net, "nfsd");
}
