
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int xsk_list_lock; int xsk_list; } ;
struct xdp_sock {int list; int tx; } ;


 int list_add_rcu (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void xdp_add_sk_umem(struct xdp_umem *umem, struct xdp_sock *xs)
{
 unsigned long flags;

 if (!xs->tx)
  return;

 spin_lock_irqsave(&umem->xsk_list_lock, flags);
 list_add_rcu(&xs->list, &umem->xsk_list);
 spin_unlock_irqrestore(&umem->xsk_list_lock, flags);
}
