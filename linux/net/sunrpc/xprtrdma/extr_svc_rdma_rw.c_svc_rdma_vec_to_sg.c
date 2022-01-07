
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rdma_write_info {unsigned int wi_base; } ;
struct TYPE_2__ {struct scatterlist* sgl; } ;
struct svc_rdma_rw_ctxt {int rw_nents; TYPE_1__ rw_sg_table; } ;
struct scatterlist {int dummy; } ;


 int sg_set_buf (struct scatterlist*,unsigned int,unsigned int) ;

__attribute__((used)) static void svc_rdma_vec_to_sg(struct svc_rdma_write_info *info,
          unsigned int len,
          struct svc_rdma_rw_ctxt *ctxt)
{
 struct scatterlist *sg = ctxt->rw_sg_table.sgl;

 sg_set_buf(&sg[0], info->wi_base, len);
 info->wi_base += len;

 ctxt->rw_nents = 1;
}
