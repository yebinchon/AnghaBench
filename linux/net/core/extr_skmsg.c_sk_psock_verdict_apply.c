
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct tcp_skb_cb {TYPE_1__ bpf; } ;
struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_psock {int work; int ingress_skb; struct sock* sk; } ;
struct sk_buff {int dummy; } ;


 int BPF_F_INGRESS ;
 int SK_PSOCK_TX_ENABLED ;
 int SOCK_DEAD ;
 struct tcp_skb_cb* TCP_SKB_CB (struct sk_buff*) ;



 int atomic_read (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int schedule_work (int *) ;
 struct sk_psock* sk_psock (struct sock*) ;
 int sk_psock_test_state (struct sk_psock*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_writeable (struct sock*) ;
 int tcp_skb_bpf_ingress (struct sk_buff*) ;
 struct sock* tcp_skb_bpf_redirect_fetch (struct sk_buff*) ;
 int unlikely (int) ;

__attribute__((used)) static void sk_psock_verdict_apply(struct sk_psock *psock,
       struct sk_buff *skb, int verdict)
{
 struct sk_psock *psock_other;
 struct sock *sk_other;
 bool ingress;

 switch (verdict) {
 case 129:
  sk_other = psock->sk;
  if (sock_flag(sk_other, SOCK_DEAD) ||
      !sk_psock_test_state(psock, SK_PSOCK_TX_ENABLED)) {
   goto out_free;
  }
  if (atomic_read(&sk_other->sk_rmem_alloc) <=
      sk_other->sk_rcvbuf) {
   struct tcp_skb_cb *tcp = TCP_SKB_CB(skb);

   tcp->bpf.flags |= BPF_F_INGRESS;
   skb_queue_tail(&psock->ingress_skb, skb);
   schedule_work(&psock->work);
   break;
  }
  goto out_free;
 case 128:
  sk_other = tcp_skb_bpf_redirect_fetch(skb);
  if (unlikely(!sk_other))
   goto out_free;
  psock_other = sk_psock(sk_other);
  if (!psock_other || sock_flag(sk_other, SOCK_DEAD) ||
      !sk_psock_test_state(psock_other, SK_PSOCK_TX_ENABLED))
   goto out_free;
  ingress = tcp_skb_bpf_ingress(skb);
  if ((!ingress && sock_writeable(sk_other)) ||
      (ingress &&
       atomic_read(&sk_other->sk_rmem_alloc) <=
       sk_other->sk_rcvbuf)) {
   if (!ingress)
    skb_set_owner_w(skb, sk_other);
   skb_queue_tail(&psock_other->ingress_skb, skb);
   schedule_work(&psock_other->work);
   break;
  }

 case 130:

 default:
out_free:
  kfree_skb(skb);
 }
}
