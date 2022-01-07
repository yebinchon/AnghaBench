
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xsk_queue {scalar_t__ cons_tail; scalar_t__ cons_head; TYPE_1__* ring; } ;
struct xdp_umem {int dummy; } ;
struct TYPE_2__ {int consumer; } ;


 int RX_BATCH_SIZE ;
 int WRITE_ONCE (int ,scalar_t__) ;
 int smp_mb () ;
 int smp_rmb () ;
 scalar_t__ xskq_nb_avail (struct xsk_queue*,int ) ;
 int * xskq_validate_addr (struct xsk_queue*,int *,struct xdp_umem*) ;

__attribute__((used)) static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr,
      struct xdp_umem *umem)
{
 if (q->cons_tail == q->cons_head) {
  smp_mb();
  WRITE_ONCE(q->ring->consumer, q->cons_tail);
  q->cons_head = q->cons_tail + xskq_nb_avail(q, RX_BATCH_SIZE);


  smp_rmb();
 }

 return xskq_validate_addr(q, addr, umem);
}
