
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xdp_sock {int tx_completion_lock; TYPE_1__* umem; } ;
struct sk_buff {int sk; } ;
struct TYPE_4__ {scalar_t__ destructor_arg; } ;
struct TYPE_3__ {int cq; } ;


 int WARN_ON_ONCE (int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int sock_wfree (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xdp_sock* xdp_sk (int ) ;
 int xskq_produce_addr (int ,int ) ;

__attribute__((used)) static void xsk_destruct_skb(struct sk_buff *skb)
{
 u64 addr = (u64)(long)skb_shinfo(skb)->destructor_arg;
 struct xdp_sock *xs = xdp_sk(skb->sk);
 unsigned long flags;

 spin_lock_irqsave(&xs->tx_completion_lock, flags);
 WARN_ON_ONCE(xskq_produce_addr(xs->umem->cq, addr));
 spin_unlock_irqrestore(&xs->tx_completion_lock, flags);

 sock_wfree(skb);
}
