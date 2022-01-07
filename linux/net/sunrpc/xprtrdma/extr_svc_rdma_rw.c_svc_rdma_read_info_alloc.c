
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svcxprt_rdma {int dummy; } ;
struct TYPE_3__ {int done; } ;
struct TYPE_4__ {TYPE_1__ cc_cqe; } ;
struct svc_rdma_read_info {TYPE_2__ ri_cc; } ;


 int GFP_KERNEL ;
 struct svc_rdma_read_info* kmalloc (int,int ) ;
 int svc_rdma_cc_init (struct svcxprt_rdma*,TYPE_2__*) ;
 int svc_rdma_wc_read_done ;

__attribute__((used)) static struct svc_rdma_read_info *
svc_rdma_read_info_alloc(struct svcxprt_rdma *rdma)
{
 struct svc_rdma_read_info *info;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return info;

 svc_rdma_cc_init(rdma, &info->ri_cc);
 info->ri_cc.cc_cqe.done = svc_rdma_wc_read_done;
 return info;
}
