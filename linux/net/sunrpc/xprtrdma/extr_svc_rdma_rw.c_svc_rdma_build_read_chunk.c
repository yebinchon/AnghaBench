
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct svc_rqst {int ** rq_pages; } ;
struct svc_rdma_read_info {scalar_t__ ri_position; TYPE_1__* ri_readctxt; scalar_t__ ri_chunklen; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int rc_page_count; } ;


 int EINVAL ;
 scalar_t__ be32_to_cpup (int ) ;
 int svc_rdma_build_read_segment (struct svc_rdma_read_info*,struct svc_rqst*,scalar_t__,scalar_t__,int ) ;
 int trace_svcrdma_encode_rseg (scalar_t__,scalar_t__,int ) ;
 int * xdr_decode_hyper (int *,int *) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static int svc_rdma_build_read_chunk(struct svc_rqst *rqstp,
         struct svc_rdma_read_info *info,
         __be32 *p)
{
 unsigned int i;
 int ret;

 ret = -EINVAL;
 info->ri_chunklen = 0;
 while (*p++ != xdr_zero && be32_to_cpup(p++) == info->ri_position) {
  u32 rs_handle, rs_length;
  u64 rs_offset;

  rs_handle = be32_to_cpup(p++);
  rs_length = be32_to_cpup(p++);
  p = xdr_decode_hyper(p, &rs_offset);

  ret = svc_rdma_build_read_segment(info, rqstp,
        rs_handle, rs_length,
        rs_offset);
  if (ret < 0)
   break;

  trace_svcrdma_encode_rseg(rs_handle, rs_length, rs_offset);
  info->ri_chunklen += rs_length;
 }




 for (i = 0; i < info->ri_readctxt->rc_page_count; i++)
  rqstp->rq_pages[i] = ((void*)0);

 return ret;
}
