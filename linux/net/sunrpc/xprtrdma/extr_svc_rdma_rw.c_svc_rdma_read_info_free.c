
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rdma_read_info {int ri_cc; } ;


 int DMA_FROM_DEVICE ;
 int kfree (struct svc_rdma_read_info*) ;
 int svc_rdma_cc_release (int *,int ) ;

__attribute__((used)) static void svc_rdma_read_info_free(struct svc_rdma_read_info *info)
{
 svc_rdma_cc_release(&info->ri_cc, DMA_FROM_DEVICE);
 kfree(info);
}
