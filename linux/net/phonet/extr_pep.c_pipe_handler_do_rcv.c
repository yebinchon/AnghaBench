
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void* sk_state; int (* sk_state_change ) (struct sock*) ;int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; int sk_drops; } ;
struct sk_buff {int * dev; } ;
struct pnpipehdr {int message_id; } ;
struct pep_sock {int init_enable; int rx_credits; int rx_fc; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;






 int PN_PIPE_DISABLE ;
 int SOCK_DEAD ;
 void* TCP_CLOSE_WAIT ;
 void* TCP_ESTABLISHED ;
 void* TCP_SYN_RECV ;
 void* TCP_SYN_SENT ;
 int __skb_pull (struct sk_buff*,int) ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pep_connresp_rcv (struct sock*,struct sk_buff*) ;
 int pep_enableresp_rcv (struct sock*,struct sk_buff*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_rcv_status (struct sock*,struct sk_buff*) ;
 int pipe_start_flow_control (struct sock*) ;
 int pn_flow_safe (int ) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static int pipe_handler_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *hdr = pnp_hdr(skb);
 int err = NET_RX_SUCCESS;

 switch (hdr->message_id) {
 case 129:
  __skb_pull(skb, 1);

 case 128:
  __skb_pull(skb, 3);
  if (!pn_flow_safe(pn->rx_fc)) {
   err = sock_queue_rcv_skb(sk, skb);
   if (!err)
    return NET_RX_SUCCESS;
   err = NET_RX_DROP;
   break;
  }

  if (pn->rx_credits == 0) {
   atomic_inc(&sk->sk_drops);
   err = NET_RX_DROP;
   break;
  }
  pn->rx_credits--;
  skb->dev = ((void*)0);
  skb_set_owner_r(skb, sk);
  skb_queue_tail(&sk->sk_receive_queue, skb);
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_data_ready(sk);
  return NET_RX_SUCCESS;

 case 133:
  if (sk->sk_state != TCP_SYN_SENT)
   break;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
  if (pep_connresp_rcv(sk, skb)) {
   sk->sk_state = TCP_CLOSE_WAIT;
   break;
  }
  if (pn->init_enable == PN_PIPE_DISABLE)
   sk->sk_state = TCP_SYN_RECV;
  else {
   sk->sk_state = TCP_ESTABLISHED;
   pipe_start_flow_control(sk);
  }
  break;

 case 131:
  if (sk->sk_state != TCP_SYN_SENT)
   break;

  if (pep_enableresp_rcv(sk, skb)) {
   sk->sk_state = TCP_CLOSE_WAIT;
   break;
  }

  sk->sk_state = TCP_ESTABLISHED;
  pipe_start_flow_control(sk);
  break;

 case 132:

  break;

 case 130:
  pipe_rcv_status(sk, skb);
  break;
 }
 kfree_skb(skb);
 return err;
}
