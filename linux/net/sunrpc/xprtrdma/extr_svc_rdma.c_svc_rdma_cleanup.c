
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;
 int svc_rdma_class ;
 int svc_unreg_xprt_class (int *) ;
 int * svcrdma_table_header ;
 int unregister_sysctl_table (int *) ;

void svc_rdma_cleanup(void)
{
 dprintk("SVCRDMA Module Removed, deregister RPC RDMA transport\n");
 if (svcrdma_table_header) {
  unregister_sysctl_table(svcrdma_table_header);
  svcrdma_table_header = ((void*)0);
 }
 svc_unreg_xprt_class(&svc_rdma_class);
}
