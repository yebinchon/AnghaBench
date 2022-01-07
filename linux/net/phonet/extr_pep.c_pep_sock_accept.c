
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_destruct; int sk_protocol; int sk_backlog_rcv; int sk_prot; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int state_after_connect; int other_pep_type; scalar_t__* data; } ;
struct TYPE_2__ {int resource; void* dobject; void* sobject; } ;
struct pep_sock {int peer_type; int hlist; scalar_t__ aligned; scalar_t__ init_enable; int tx_fc; int rx_fc; scalar_t__ rx_credits; scalar_t__ ifindex; int tx_credits; scalar_t__ pipe_handle; int ctrlreq_queue; struct sock* listener; TYPE_1__ pn_sk; } ;
typedef int buf ;


 int EINVAL ;
 int ENOBUFS ;
 int EPROTO ;
 int GFP_KERNEL ;
 int O_NONBLOCK ;
 int PF_PHONET ;
 int PN_LEGACY_FLOW_CONTROL ;


 int PN_PIPE_ERR_INVALID_PARAM ;
 int PN_PIPE_ERR_OVERLOAD ;
 int PN_PIPE_ERR_PEP_IN_USE ;


 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_SYN_RECV ;
 int __sock_put (struct sock*) ;
 int atomic_set (int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int pep_accept_conn (struct sock*,struct sk_buff*) ;
 struct sock* pep_find_pipe (int *,struct sockaddr_pn*,scalar_t__) ;
 scalar_t__* pep_get_sb (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int pep_reject_conn (struct sock*,struct sk_buff*,int ,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_destruct ;
 int pipe_do_rcv ;
 int pn_skb_get_dst_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 int pn_skb_get_src_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 void* pn_sockaddr_get_object (struct sockaddr_pn*) ;
 int pn_sockaddr_get_resource (struct sockaddr_pn*) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int release_sock (struct sock*) ;
 int sk_acceptq_removed (struct sock*) ;
 int sk_add_node (struct sock*,int *) ;
 struct sock* sk_alloc (int ,int ,int ,int ,int) ;
 int skb_queue_head_init (int *) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int ,int,int*) ;
 int sock_hold (struct sock*) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ unlikely (struct sock*) ;

__attribute__((used)) static struct sock *pep_sock_accept(struct sock *sk, int flags, int *errp,
        bool kern)
{
 struct pep_sock *pn = pep_sk(sk), *newpn;
 struct sock *newsk = ((void*)0);
 struct sk_buff *skb;
 struct pnpipehdr *hdr;
 struct sockaddr_pn dst, src;
 int err;
 u16 peer_type;
 u8 pipe_handle, enabled, n_sb;
 u8 aligned = 0;

 skb = skb_recv_datagram(sk, 0, flags & O_NONBLOCK, errp);
 if (!skb)
  return ((void*)0);

 lock_sock(sk);
 if (sk->sk_state != TCP_LISTEN) {
  err = -EINVAL;
  goto drop;
 }
 sk_acceptq_removed(sk);

 err = -EPROTO;
 if (!pskb_may_pull(skb, sizeof(*hdr) + 4))
  goto drop;

 hdr = pnp_hdr(skb);
 pipe_handle = hdr->pipe_handle;
 switch (hdr->state_after_connect) {
 case 131:
  enabled = 0;
  break;
 case 130:
  enabled = 1;
  break;
 default:
  pep_reject_conn(sk, skb, PN_PIPE_ERR_INVALID_PARAM,
    GFP_KERNEL);
  goto drop;
 }
 peer_type = hdr->other_pep_type << 8;


 n_sb = hdr->data[3];
 while (n_sb > 0) {
  u8 type, buf[1], len = sizeof(buf);
  const u8 *data = pep_get_sb(skb, &type, &len, buf);

  if (data == ((void*)0))
   goto drop;
  switch (type) {
  case 128:
   if (len < 1)
    goto drop;
   peer_type = (peer_type & 0xff00) | data[0];
   break;
  case 129:
   aligned = data[0] != 0;
   break;
  }
  n_sb--;
 }


 newsk = pep_find_pipe(&pn->hlist, &dst, pipe_handle);
 if (unlikely(newsk)) {
  __sock_put(newsk);
  newsk = ((void*)0);
  pep_reject_conn(sk, skb, PN_PIPE_ERR_PEP_IN_USE, GFP_KERNEL);
  goto drop;
 }


 newsk = sk_alloc(sock_net(sk), PF_PHONET, GFP_KERNEL, sk->sk_prot,
    kern);
 if (!newsk) {
  pep_reject_conn(sk, skb, PN_PIPE_ERR_OVERLOAD, GFP_KERNEL);
  err = -ENOBUFS;
  goto drop;
 }

 sock_init_data(((void*)0), newsk);
 newsk->sk_state = TCP_SYN_RECV;
 newsk->sk_backlog_rcv = pipe_do_rcv;
 newsk->sk_protocol = sk->sk_protocol;
 newsk->sk_destruct = pipe_destruct;

 newpn = pep_sk(newsk);
 pn_skb_get_dst_sockaddr(skb, &dst);
 pn_skb_get_src_sockaddr(skb, &src);
 newpn->pn_sk.sobject = pn_sockaddr_get_object(&dst);
 newpn->pn_sk.dobject = pn_sockaddr_get_object(&src);
 newpn->pn_sk.resource = pn_sockaddr_get_resource(&dst);
 sock_hold(sk);
 newpn->listener = sk;
 skb_queue_head_init(&newpn->ctrlreq_queue);
 newpn->pipe_handle = pipe_handle;
 atomic_set(&newpn->tx_credits, 0);
 newpn->ifindex = 0;
 newpn->peer_type = peer_type;
 newpn->rx_credits = 0;
 newpn->rx_fc = newpn->tx_fc = PN_LEGACY_FLOW_CONTROL;
 newpn->init_enable = enabled;
 newpn->aligned = aligned;

 err = pep_accept_conn(newsk, skb);
 if (err) {
  sock_put(newsk);
  newsk = ((void*)0);
  goto drop;
 }
 sk_add_node(newsk, &pn->hlist);
drop:
 release_sock(sk);
 kfree_skb(skb);
 *errp = err;
 return newsk;
}
