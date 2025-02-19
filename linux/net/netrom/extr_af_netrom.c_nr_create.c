
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int sk_protocol; } ;
struct nr_sock {int bpqext; int state; int window; void* idle; void* t4; void* n2; void* t2; void* t1; int frag_queue; int reseq_queue; int ack_queue; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 int NR_STATE_0 ;
 int PF_NETROM ;
 scalar_t__ SOCK_SEQPACKET ;
 int init_net ;
 void* msecs_to_jiffies (int ) ;
 int net_eq (struct net*,int *) ;
 int nr_init_timers (struct sock*) ;
 int nr_proto ;
 int nr_proto_ops ;
 struct nr_sock* nr_sk (struct sock*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sysctl_netrom_transport_acknowledge_delay ;
 int sysctl_netrom_transport_busy_delay ;
 int sysctl_netrom_transport_maximum_tries ;
 int sysctl_netrom_transport_no_activity_timeout ;
 int sysctl_netrom_transport_requested_window_size ;
 int sysctl_netrom_transport_timeout ;

__attribute__((used)) static int nr_create(struct net *net, struct socket *sock, int protocol,
       int kern)
{
 struct sock *sk;
 struct nr_sock *nr;

 if (!net_eq(net, &init_net))
  return -EAFNOSUPPORT;

 if (sock->type != SOCK_SEQPACKET || protocol != 0)
  return -ESOCKTNOSUPPORT;

 sk = sk_alloc(net, PF_NETROM, GFP_ATOMIC, &nr_proto, kern);
 if (sk == ((void*)0))
  return -ENOMEM;

 nr = nr_sk(sk);

 sock_init_data(sock, sk);

 sock->ops = &nr_proto_ops;
 sk->sk_protocol = protocol;

 skb_queue_head_init(&nr->ack_queue);
 skb_queue_head_init(&nr->reseq_queue);
 skb_queue_head_init(&nr->frag_queue);

 nr_init_timers(sk);

 nr->t1 =
  msecs_to_jiffies(sysctl_netrom_transport_timeout);
 nr->t2 =
  msecs_to_jiffies(sysctl_netrom_transport_acknowledge_delay);
 nr->n2 =
  msecs_to_jiffies(sysctl_netrom_transport_maximum_tries);
 nr->t4 =
  msecs_to_jiffies(sysctl_netrom_transport_busy_delay);
 nr->idle =
  msecs_to_jiffies(sysctl_netrom_transport_no_activity_timeout);
 nr->window = sysctl_netrom_transport_requested_window_size;

 nr->bpqext = 1;
 nr->state = NR_STATE_0;

 return 0;
}
