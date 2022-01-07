
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int sk_state; int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int message_id; } ;
struct pep_sock {int hlist; } ;


 int GFP_ATOMIC ;
 int NET_RX_SUCCESS ;






 int PN_PIPE_ERR_PEP_IN_USE ;
 scalar_t__ PN_PIPE_INVALID_HANDLE ;
 int PN_PIPE_NO_ERROR ;
 int SOCK_DEAD ;
 int TCPF_CLOSE ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_LISTEN ;
 int TCP_LISTEN ;
 int kfree_skb (struct sk_buff*) ;
 int pep_ctrlreq_error (struct sock*,struct sk_buff*,scalar_t__,int ) ;
 struct sock* pep_find_pipe (int *,struct sockaddr_pn*,scalar_t__) ;
 int pep_reject_conn (struct sock*,struct sk_buff*,int ,int ) ;
 int pep_reply (struct sock*,struct sk_buff*,int ,int *,int ,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_handler_do_rcv (struct sock*,struct sk_buff*) ;
 int pn_skb_get_dst_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int sk_acceptq_added (struct sock*) ;
 int sk_acceptq_is_full (struct sock*) ;
 int sk_receive_skb (struct sock*,struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int pep_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct sock *sknode;
 struct pnpipehdr *hdr;
 struct sockaddr_pn dst;
 u8 pipe_handle;

 if (!pskb_may_pull(skb, sizeof(*hdr)))
  goto drop;

 hdr = pnp_hdr(skb);
 pipe_handle = hdr->pipe_handle;
 if (pipe_handle == PN_PIPE_INVALID_HANDLE)
  goto drop;

 pn_skb_get_dst_sockaddr(skb, &dst);


 sknode = pep_find_pipe(&pn->hlist, &dst, pipe_handle);
 if (sknode)
  return sk_receive_skb(sknode, skb, 1);

 switch (hdr->message_id) {
 case 133:
  if (sk->sk_state != TCP_LISTEN || sk_acceptq_is_full(sk)) {
   pep_reject_conn(sk, skb, PN_PIPE_ERR_PEP_IN_USE,
     GFP_ATOMIC);
   break;
  }
  skb_queue_head(&sk->sk_receive_queue, skb);
  sk_acceptq_added(sk);
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_data_ready(sk);
  return NET_RX_SUCCESS;

 case 130:
  pep_reply(sk, skb, PN_PIPE_NO_ERROR, ((void*)0), 0, GFP_ATOMIC);
  break;

 case 132:
  pep_ctrlreq_error(sk, skb, PN_PIPE_INVALID_HANDLE, GFP_ATOMIC);
  break;

 case 128:
 case 129:
 case 131:

  break;

 default:
  if ((1 << sk->sk_state)
    & ~(TCPF_CLOSE|TCPF_LISTEN|TCPF_CLOSE_WAIT))

   return pipe_handler_do_rcv(sk, skb);
 }
drop:
 kfree_skb(skb);
 return NET_RX_SUCCESS;
}
