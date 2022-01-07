
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {int dummy; } ;
struct TYPE_3__ {int done; } ;
struct TYPE_4__ {TYPE_1__ cc_cqe; } ;
struct svc_rdma_write_info {TYPE_2__ wi_cc; int * wi_segs; int wi_nsegs; scalar_t__ wi_seg_no; scalar_t__ wi_seg_off; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int be32_to_cpup (int *) ;
 struct svc_rdma_write_info* kmalloc (int,int ) ;
 int svc_rdma_cc_init (struct svcxprt_rdma*,TYPE_2__*) ;
 int svc_rdma_write_done ;

__attribute__((used)) static struct svc_rdma_write_info *
svc_rdma_write_info_alloc(struct svcxprt_rdma *rdma, __be32 *chunk)
{
 struct svc_rdma_write_info *info;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return info;

 info->wi_seg_off = 0;
 info->wi_seg_no = 0;
 info->wi_nsegs = be32_to_cpup(++chunk);
 info->wi_segs = ++chunk;
 svc_rdma_cc_init(rdma, &info->wi_cc);
 info->wi_cc.cc_cqe.done = svc_rdma_write_done;
 return info;
}
