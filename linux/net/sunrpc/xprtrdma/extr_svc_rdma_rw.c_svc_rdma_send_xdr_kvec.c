
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rdma_write_info {int wi_base; } ;
struct kvec {int iov_len; int iov_base; } ;


 int svc_rdma_build_writes (struct svc_rdma_write_info*,int ,int ) ;
 int svc_rdma_vec_to_sg ;

__attribute__((used)) static int svc_rdma_send_xdr_kvec(struct svc_rdma_write_info *info,
      struct kvec *vec)
{
 info->wi_base = vec->iov_base;
 return svc_rdma_build_writes(info, svc_rdma_vec_to_sg,
         vec->iov_len);
}
