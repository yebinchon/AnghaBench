
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsk_umem_info {int fq; int umem; } ;
struct xsk_socket_info {struct xsk_umem_info* umem; int tx; int rx; int xsk; } ;
struct xsk_socket_config {int tx_size; int bind_flags; int xdp_flags; scalar_t__ libbpf_flags; int rx_size; } ;


 int XSK_RING_CONS__DEFAULT_NUM_DESCS ;
 int XSK_RING_PROD__DEFAULT_NUM_DESCS ;
 int bpf_get_link_xdp_id (int ,int *,int ) ;
 struct xsk_socket_info* calloc (int,int) ;
 int errno ;
 int exit_with_error (int) ;
 int opt_if ;
 int opt_ifindex ;
 int opt_queue ;
 int opt_xdp_bind_flags ;
 int opt_xdp_flags ;
 int opt_xsk_frame_size ;
 int prog_id ;
 int* xsk_ring_prod__fill_addr (int *,int ) ;
 int xsk_ring_prod__reserve (int *,int,int *) ;
 int xsk_ring_prod__submit (int *,int) ;
 int xsk_socket__create (int *,int ,int ,int ,int *,int *,struct xsk_socket_config*) ;

__attribute__((used)) static struct xsk_socket_info *xsk_configure_socket(struct xsk_umem_info *umem)
{
 struct xsk_socket_config cfg;
 struct xsk_socket_info *xsk;
 int ret;
 u32 idx;
 int i;

 xsk = calloc(1, sizeof(*xsk));
 if (!xsk)
  exit_with_error(errno);

 xsk->umem = umem;
 cfg.rx_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
 cfg.tx_size = XSK_RING_PROD__DEFAULT_NUM_DESCS;
 cfg.libbpf_flags = 0;
 cfg.xdp_flags = opt_xdp_flags;
 cfg.bind_flags = opt_xdp_bind_flags;
 ret = xsk_socket__create(&xsk->xsk, opt_if, opt_queue, umem->umem,
     &xsk->rx, &xsk->tx, &cfg);
 if (ret)
  exit_with_error(-ret);

 ret = bpf_get_link_xdp_id(opt_ifindex, &prog_id, opt_xdp_flags);
 if (ret)
  exit_with_error(-ret);

 ret = xsk_ring_prod__reserve(&xsk->umem->fq,
         XSK_RING_PROD__DEFAULT_NUM_DESCS,
         &idx);
 if (ret != XSK_RING_PROD__DEFAULT_NUM_DESCS)
  exit_with_error(-ret);
 for (i = 0; i < XSK_RING_PROD__DEFAULT_NUM_DESCS; i++)
  *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx++) =
   i * opt_xsk_frame_size;
 xsk_ring_prod__submit(&xsk->umem->fq,
         XSK_RING_PROD__DEFAULT_NUM_DESCS);

 return xsk;
}
