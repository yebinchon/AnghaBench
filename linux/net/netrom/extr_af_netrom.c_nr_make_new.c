
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int sk_priority; int sk_prot; } ;
struct nr_sock {int bpqext; int device; int window; int idle; int t4; int n2; int t2; int t1; int frag_queue; int reseq_queue; int ack_queue; } ;


 int GFP_ATOMIC ;
 int PF_NETROM ;
 scalar_t__ SOCK_SEQPACKET ;
 int TCP_ESTABLISHED ;
 int nr_init_timers (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 struct sock* sk_alloc (int ,int ,int ,int ,int ) ;
 int skb_queue_head_init (int *) ;
 int sock_copy_flags (struct sock*,struct sock*) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct sock *nr_make_new(struct sock *osk)
{
 struct sock *sk;
 struct nr_sock *nr, *onr;

 if (osk->sk_type != SOCK_SEQPACKET)
  return ((void*)0);

 sk = sk_alloc(sock_net(osk), PF_NETROM, GFP_ATOMIC, osk->sk_prot, 0);
 if (sk == ((void*)0))
  return ((void*)0);

 nr = nr_sk(sk);

 sock_init_data(((void*)0), sk);

 sk->sk_type = osk->sk_type;
 sk->sk_priority = osk->sk_priority;
 sk->sk_protocol = osk->sk_protocol;
 sk->sk_rcvbuf = osk->sk_rcvbuf;
 sk->sk_sndbuf = osk->sk_sndbuf;
 sk->sk_state = TCP_ESTABLISHED;
 sock_copy_flags(sk, osk);

 skb_queue_head_init(&nr->ack_queue);
 skb_queue_head_init(&nr->reseq_queue);
 skb_queue_head_init(&nr->frag_queue);

 nr_init_timers(sk);

 onr = nr_sk(osk);

 nr->t1 = onr->t1;
 nr->t2 = onr->t2;
 nr->n2 = onr->n2;
 nr->t4 = onr->t4;
 nr->idle = onr->idle;
 nr->window = onr->window;

 nr->device = onr->device;
 nr->bpqext = onr->bpqext;

 return sk;
}
