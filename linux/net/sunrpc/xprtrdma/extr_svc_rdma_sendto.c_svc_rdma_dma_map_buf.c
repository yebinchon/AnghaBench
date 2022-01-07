
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_send_ctxt {int dummy; } ;


 int offset_in_page (unsigned char*) ;
 int svc_rdma_dma_map_page (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int ,int ,unsigned int) ;
 int virt_to_page (unsigned char*) ;

__attribute__((used)) static int svc_rdma_dma_map_buf(struct svcxprt_rdma *rdma,
    struct svc_rdma_send_ctxt *ctxt,
    unsigned char *base,
    unsigned int len)
{
 return svc_rdma_dma_map_page(rdma, ctxt, virt_to_page(base),
         offset_in_page(base), len);
}
