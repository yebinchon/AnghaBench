
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_ib_exit () ;
 int rds_rdma_listen_stop () ;

__attribute__((used)) static void rds_rdma_exit(void)
{

 rds_rdma_listen_stop();
 rds_ib_exit();
}
