
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; } ;
struct sock {int sk_type; int sk_destruct; int sk_protocol; int sk_state; } ;
struct nfc_llcp_sock {int remote_ready; int accept_queue; int tx_pending_queue; int tx_queue; int reserved_ssap; scalar_t__ recv_ack_n; scalar_t__ recv_n; scalar_t__ send_ack_n; scalar_t__ send_n; int miux; scalar_t__ rw; int dsap; scalar_t__ ssap; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int LLCP_CLOSED ;
 scalar_t__ LLCP_MAX_MIUX ;
 scalar_t__ LLCP_MAX_RW ;
 int LLCP_SAP_MAX ;
 int LLCP_SAP_SDP ;
 int NFC_SOCKPROTO_LLCP ;
 int PF_NFC ;
 int SS_UNCONNECTED ;
 int cpu_to_be16 (scalar_t__) ;
 int init_net ;
 int llcp_sock_destruct ;
 int llcp_sock_proto ;
 struct nfc_llcp_sock* nfc_llcp_sock (struct sock*) ;
 int nfc_llcp_socket_remote_param_init (struct nfc_llcp_sock*) ;
 struct sock* sk_alloc (int *,int ,int ,int *,int) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;

struct sock *nfc_llcp_sock_alloc(struct socket *sock, int type, gfp_t gfp, int kern)
{
 struct sock *sk;
 struct nfc_llcp_sock *llcp_sock;

 sk = sk_alloc(&init_net, PF_NFC, gfp, &llcp_sock_proto, kern);
 if (!sk)
  return ((void*)0);

 llcp_sock = nfc_llcp_sock(sk);

 sock_init_data(sock, sk);
 sk->sk_state = LLCP_CLOSED;
 sk->sk_protocol = NFC_SOCKPROTO_LLCP;
 sk->sk_type = type;
 sk->sk_destruct = llcp_sock_destruct;

 llcp_sock->ssap = 0;
 llcp_sock->dsap = LLCP_SAP_SDP;
 llcp_sock->rw = LLCP_MAX_RW + 1;
 llcp_sock->miux = cpu_to_be16(LLCP_MAX_MIUX + 1);
 llcp_sock->send_n = llcp_sock->send_ack_n = 0;
 llcp_sock->recv_n = llcp_sock->recv_ack_n = 0;
 llcp_sock->remote_ready = 1;
 llcp_sock->reserved_ssap = LLCP_SAP_MAX;
 nfc_llcp_socket_remote_param_init(llcp_sock);
 skb_queue_head_init(&llcp_sock->tx_queue);
 skb_queue_head_init(&llcp_sock->tx_pending_queue);
 INIT_LIST_HEAD(&llcp_sock->accept_queue);

 if (sock != ((void*)0))
  sock->state = SS_UNCONNECTED;

 return sk;
}
