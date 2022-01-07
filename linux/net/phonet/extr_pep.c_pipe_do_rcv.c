
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sock {scalar_t__ sk_state; int (* sk_data_ready ) (struct sock*) ;int (* sk_write_space ) (struct sock*) ;struct sk_buff_head sk_receive_queue; int sk_drops; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int * dev; } ;
struct pnpipehdr {int message_id; int state_after_reset; } ;
struct pep_sock {int init_enable; int rx_credits; int tx_credits; int tx_fc; int rx_fc; struct sk_buff_head ctrlreq_queue; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int PNPIPE_CTRLREQ_MAX ;
 int PN_PIPE_ERR_PEP_IN_USE ;
 int PN_PIPE_NO_ERROR ;
 int SOCK_DEAD ;
 scalar_t__ TCP_CLOSE_WAIT ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_SYN_RECV ;
 int __skb_pull (struct sk_buff*,int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int kfree_skb (struct sk_buff*) ;
 int net_dbg_ratelimited (char*,int) ;
 int pep_reject_conn (struct sock*,struct sk_buff*,int ,int ) ;
 int pep_reply (struct sock*,struct sk_buff*,int ,int *,int ,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_grant_credits (struct sock*,int ) ;
 int pipe_rcv_created (struct sock*,struct sk_buff*) ;
 int pipe_rcv_status (struct sock*,struct sk_buff*) ;
 int pn_flow_safe (int ) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int skb_queue_len (struct sk_buff_head*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;

__attribute__((used)) static int pipe_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *hdr = pnp_hdr(skb);
 struct sk_buff_head *queue;
 int err = 0;

 BUG_ON(sk->sk_state == TCP_CLOSE_WAIT);

 switch (hdr->message_id) {
 case 143:
  pep_reject_conn(sk, skb, PN_PIPE_ERR_PEP_IN_USE, GFP_ATOMIC);
  break;

 case 140:
  pep_reply(sk, skb, PN_PIPE_NO_ERROR, ((void*)0), 0, GFP_ATOMIC);
  sk->sk_state = TCP_CLOSE_WAIT;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
  break;

 case 139:

  pep_reply(sk, skb, PN_PIPE_NO_ERROR, ((void*)0), 0, GFP_ATOMIC);
  break;

 case 138:
  switch (hdr->state_after_reset) {
  case 129:
   pn->init_enable = 0;
   break;
  case 128:
   pn->init_enable = 1;
   break;
  default:
   err = -EINVAL;
   goto out;
  }

 case 141:
  atomic_set(&pn->tx_credits, 0);
  pep_reply(sk, skb, PN_PIPE_NO_ERROR, ((void*)0), 0, GFP_ATOMIC);
  break;

 case 142:
  if (skb_queue_len(&pn->ctrlreq_queue) >= PNPIPE_CTRLREQ_MAX) {
   atomic_inc(&sk->sk_drops);
   break;
  }
  __skb_pull(skb, 4);
  queue = &pn->ctrlreq_queue;
  goto queue;

 case 136:
  __skb_pull(skb, 1);

 case 134:
  __skb_pull(skb, 3);
  if (!pn_flow_safe(pn->rx_fc)) {
   err = sock_queue_rcv_skb(sk, skb);
   if (!err)
    return NET_RX_SUCCESS;
   err = -ENOBUFS;
   break;
  }

  if (pn->rx_credits == 0) {
   atomic_inc(&sk->sk_drops);
   err = -ENOBUFS;
   break;
  }
  pn->rx_credits--;
  queue = &sk->sk_receive_queue;
  goto queue;

 case 137:
  pipe_rcv_status(sk, skb);
  break;

 case 131:
  err = pipe_rcv_created(sk, skb);
  break;

 case 135:
  err = pipe_rcv_created(sk, skb);
  if (err)
   break;

 case 130:
  if (!pn->init_enable)
   break;

 case 132:
  if (!pn_flow_safe(pn->tx_fc)) {
   atomic_set(&pn->tx_credits, 1);
   sk->sk_write_space(sk);
  }
  if (sk->sk_state == TCP_ESTABLISHED)
   break;
  sk->sk_state = TCP_ESTABLISHED;
  pipe_grant_credits(sk, GFP_ATOMIC);
  break;

 case 133:
  sk->sk_state = TCP_SYN_RECV;
  pn->rx_credits = 0;
  break;

 default:
  net_dbg_ratelimited("Phonet unknown PEP message: %u\n",
        hdr->message_id);
  err = -EINVAL;
 }
out:
 kfree_skb(skb);
 return (err == -ENOBUFS) ? NET_RX_DROP : NET_RX_SUCCESS;

queue:
 skb->dev = ((void*)0);
 skb_set_owner_r(skb, sk);
 skb_queue_tail(queue, skb);
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk);
 return NET_RX_SUCCESS;
}
