
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_info_rdma_connection {int rdma_mr_size; int rdma_mr_max; } ;
struct TYPE_2__ {int max_pages; } ;
struct rds_ib_mr_pool {TYPE_1__ fmr_attr; int max_items; } ;
struct rds_ib_device {struct rds_ib_mr_pool* mr_1m_pool; } ;



void rds_ib_get_mr_info(struct rds_ib_device *rds_ibdev, struct rds_info_rdma_connection *iinfo)
{
 struct rds_ib_mr_pool *pool_1m = rds_ibdev->mr_1m_pool;

 iinfo->rdma_mr_max = pool_1m->max_items;
 iinfo->rdma_mr_size = pool_1m->fmr_attr.max_pages;
}
