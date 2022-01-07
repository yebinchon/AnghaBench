
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xsk_umem_info {void* buffer; int cq; int fq; int umem; } ;
struct xsk_umem_config {int flags; int frame_headroom; int frame_size; int comp_size; int fill_size; } ;


 int XSK_RING_CONS__DEFAULT_NUM_DESCS ;
 int XSK_RING_PROD__DEFAULT_NUM_DESCS ;
 int XSK_UMEM__DEFAULT_FRAME_HEADROOM ;
 struct xsk_umem_info* calloc (int,int) ;
 int errno ;
 int exit_with_error (int) ;
 int opt_umem_flags ;
 int opt_xsk_frame_size ;
 int xsk_umem__create (int *,void*,int ,int *,int *,struct xsk_umem_config*) ;

__attribute__((used)) static struct xsk_umem_info *xsk_configure_umem(void *buffer, u64 size)
{
 struct xsk_umem_info *umem;
 struct xsk_umem_config cfg = {
  .fill_size = XSK_RING_PROD__DEFAULT_NUM_DESCS,
  .comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS,
  .frame_size = opt_xsk_frame_size,
  .frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM,
  .flags = opt_umem_flags
 };

 int ret;

 umem = calloc(1, sizeof(*umem));
 if (!umem)
  exit_with_error(errno);

 ret = xsk_umem__create(&umem->umem, buffer, size, &umem->fq, &umem->cq,
          &cfg);

 if (ret)
  exit_with_error(-ret);

 umem->buffer = buffer;
 return umem;
}
