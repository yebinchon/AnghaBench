
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct iucv_sock {int msglimit_peer; } ;
struct TYPE_2__ {int window; } ;


 scalar_t__ IUCV_BOUND ;
 scalar_t__ IUCV_CONNECTED ;
 int NET_RX_SUCCESS ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 TYPE_1__* iucv_trans_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int afiucv_hs_callback_synack(struct sock *sk, struct sk_buff *skb)
{
 struct iucv_sock *iucv = iucv_sk(sk);

 if (!iucv)
  goto out;
 if (sk->sk_state != IUCV_BOUND)
  goto out;
 bh_lock_sock(sk);
 iucv->msglimit_peer = iucv_trans_hdr(skb)->window;
 sk->sk_state = IUCV_CONNECTED;
 sk->sk_state_change(sk);
 bh_unlock_sock(sk);
out:
 kfree_skb(skb);
 return NET_RX_SUCCESS;
}
