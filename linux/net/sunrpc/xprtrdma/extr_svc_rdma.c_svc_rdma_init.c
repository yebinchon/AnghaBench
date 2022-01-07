
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*,...) ;
 scalar_t__ register_sysctl_table (int ) ;
 int svc_rdma_class ;
 int svc_reg_xprt_class (int *) ;
 int svcrdma_max_bc_requests ;
 int svcrdma_max_req_size ;
 int svcrdma_max_requests ;
 int svcrdma_ord ;
 int svcrdma_root_table ;
 scalar_t__ svcrdma_table_header ;

int svc_rdma_init(void)
{
 dprintk("SVCRDMA Module Init, register RPC RDMA transport\n");
 dprintk("\tsvcrdma_ord      : %d\n", svcrdma_ord);
 dprintk("\tmax_requests     : %u\n", svcrdma_max_requests);
 dprintk("\tmax_bc_requests  : %u\n", svcrdma_max_bc_requests);
 dprintk("\tmax_inline       : %d\n", svcrdma_max_req_size);

 if (!svcrdma_table_header)
  svcrdma_table_header =
   register_sysctl_table(svcrdma_root_table);


 svc_reg_xprt_class(&svc_rdma_class);
 return 0;
}
