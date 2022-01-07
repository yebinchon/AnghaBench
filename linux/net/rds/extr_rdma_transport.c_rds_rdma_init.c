
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_ib_exit () ;
 int rds_ib_init () ;
 int rds_rdma_listen_init () ;

__attribute__((used)) static int rds_rdma_init(void)
{
 int ret;

 ret = rds_ib_init();
 if (ret)
  goto out;

 ret = rds_rdma_listen_init();
 if (ret)
  rds_ib_exit();
out:
 return ret;
}
