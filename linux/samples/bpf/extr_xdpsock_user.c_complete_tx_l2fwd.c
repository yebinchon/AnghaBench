
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xsk_umem_info {int cq; int fq; } ;
struct xsk_socket_info {size_t outstanding_tx; unsigned int tx_npkts; struct xsk_umem_info* umem; int tx; } ;
struct pollfd {int dummy; } ;


 size_t BATCH_SIZE ;
 int exit_with_error (int) ;
 int kick_tx (struct xsk_socket_info*) ;
 int num_socks ;
 int opt_need_wakeup ;
 int opt_timeout ;
 int poll (struct pollfd*,int ,int ) ;
 int * xsk_ring_cons__comp_addr (int *,int ) ;
 unsigned int xsk_ring_cons__peek (int *,size_t,scalar_t__*) ;
 int xsk_ring_cons__release (int *,unsigned int) ;
 int * xsk_ring_prod__fill_addr (int *,int ) ;
 scalar_t__ xsk_ring_prod__needs_wakeup (int *) ;
 int xsk_ring_prod__reserve (int *,unsigned int,scalar_t__*) ;
 int xsk_ring_prod__submit (int *,unsigned int) ;

__attribute__((used)) static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk,
         struct pollfd *fds)
{
 struct xsk_umem_info *umem = xsk->umem;
 u32 idx_cq = 0, idx_fq = 0;
 unsigned int rcvd;
 size_t ndescs;

 if (!xsk->outstanding_tx)
  return;

 if (!opt_need_wakeup || xsk_ring_prod__needs_wakeup(&xsk->tx))
  kick_tx(xsk);

 ndescs = (xsk->outstanding_tx > BATCH_SIZE) ? BATCH_SIZE :
  xsk->outstanding_tx;


 rcvd = xsk_ring_cons__peek(&umem->cq, ndescs, &idx_cq);
 if (rcvd > 0) {
  unsigned int i;
  int ret;

  ret = xsk_ring_prod__reserve(&umem->fq, rcvd, &idx_fq);
  while (ret != rcvd) {
   if (ret < 0)
    exit_with_error(-ret);
   if (xsk_ring_prod__needs_wakeup(&umem->fq))
    ret = poll(fds, num_socks, opt_timeout);
   ret = xsk_ring_prod__reserve(&umem->fq, rcvd, &idx_fq);
  }

  for (i = 0; i < rcvd; i++)
   *xsk_ring_prod__fill_addr(&umem->fq, idx_fq++) =
    *xsk_ring_cons__comp_addr(&umem->cq, idx_cq++);

  xsk_ring_prod__submit(&xsk->umem->fq, rcvd);
  xsk_ring_cons__release(&xsk->umem->cq, rcvd);
  xsk->outstanding_tx -= rcvd;
  xsk->tx_npkts += rcvd;
 }
}
