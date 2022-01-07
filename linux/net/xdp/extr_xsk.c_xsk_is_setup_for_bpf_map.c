
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {TYPE_1__* umem; TYPE_1__* rx; } ;
struct TYPE_2__ {struct TYPE_2__* fq; } ;


 scalar_t__ READ_ONCE (TYPE_1__*) ;

bool xsk_is_setup_for_bpf_map(struct xdp_sock *xs)
{
 return READ_ONCE(xs->rx) && READ_ONCE(xs->umem) &&
  READ_ONCE(xs->umem->fq);
}
