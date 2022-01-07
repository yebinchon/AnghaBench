
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deferredq; } ;
struct tipc_msg {int dummy; } ;
struct tipc_sock {int group_is_open; TYPE_1__ mc_method; int snd_win; int rcv_win; int dupl_rcvcnt; int conn_timeout; int portid; struct tipc_msg phdr; int cong_links; int publications; int max_pkt; } ;
struct socket {int type; struct proto_ops const* ops; } ;
struct sock {int sk_destruct; int sk_write_space; int sk_data_ready; int sk_rcvbuf; int sk_backlog_rcv; scalar_t__ sk_shutdown; int sk_timer; } ;
struct proto_ops {int dummy; } ;
struct net {int dummy; } ;


 int AF_TIPC ;
 int CONN_TIMEOUT_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_PKT_DEFAULT ;
 int NAMED_H_SIZE ;
 int RCVBUF_MIN ;




 int TIPC_DUMP_NONE ;
 int TIPC_LOW_IMPORTANCE ;
 int TIPC_NAMED_MSG ;
 int TIPC_OPEN ;
 int __skb_queue_head_init (int *) ;
 int atomic_set (int *,int ) ;
 struct proto_ops msg_ops ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 struct proto_ops packet_ops ;
 int pr_warn (char*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int smp_mb () ;
 int sock_init_data (struct socket*,struct sock*) ;
 struct proto_ops stream_ops ;
 int * sysctl_tipc_rmem ;
 int timer_setup (int *,int ,int ) ;
 int tipc_data_ready ;
 int tipc_msg_init (int ,struct tipc_msg*,int ,int ,int ,int ) ;
 int tipc_own_addr (struct net*) ;
 int tipc_proto ;
 int tipc_set_sk_state (struct sock*,int ) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_backlog_rcv ;
 scalar_t__ tipc_sk_insert (struct tipc_sock*) ;
 int tipc_sk_timeout ;
 scalar_t__ tipc_sk_type_connectionless (struct sock*) ;
 int tipc_sock_destruct ;
 int tipc_write_space ;
 int trace_tipc_sk_create (struct sock*,int *,int ,char*) ;
 int tsk_adv_blocks (int ) ;
 int tsk_set_unreliable (struct tipc_sock*,int) ;
 int tsk_set_unreturnable (struct tipc_sock*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tipc_sk_create(struct net *net, struct socket *sock,
     int protocol, int kern)
{
 const struct proto_ops *ops;
 struct sock *sk;
 struct tipc_sock *tsk;
 struct tipc_msg *msg;


 if (unlikely(protocol != 0))
  return -EPROTONOSUPPORT;

 switch (sock->type) {
 case 128:
  ops = &stream_ops;
  break;
 case 129:
  ops = &packet_ops;
  break;
 case 131:
 case 130:
  ops = &msg_ops;
  break;
 default:
  return -EPROTOTYPE;
 }


 sk = sk_alloc(net, AF_TIPC, GFP_KERNEL, &tipc_proto, kern);
 if (sk == ((void*)0))
  return -ENOMEM;

 tsk = tipc_sk(sk);
 tsk->max_pkt = MAX_PKT_DEFAULT;
 INIT_LIST_HEAD(&tsk->publications);
 INIT_LIST_HEAD(&tsk->cong_links);
 msg = &tsk->phdr;


 sock->ops = ops;
 sock_init_data(sock, sk);
 tipc_set_sk_state(sk, TIPC_OPEN);
 if (tipc_sk_insert(tsk)) {
  pr_warn("Socket create failed; port number exhausted\n");
  return -EINVAL;
 }


 smp_mb();

 tipc_msg_init(tipc_own_addr(net), msg, TIPC_LOW_IMPORTANCE,
        TIPC_NAMED_MSG, NAMED_H_SIZE, 0);

 msg_set_origport(msg, tsk->portid);
 timer_setup(&sk->sk_timer, tipc_sk_timeout, 0);
 sk->sk_shutdown = 0;
 sk->sk_backlog_rcv = tipc_sk_backlog_rcv;
 sk->sk_rcvbuf = sysctl_tipc_rmem[1];
 sk->sk_data_ready = tipc_data_ready;
 sk->sk_write_space = tipc_write_space;
 sk->sk_destruct = tipc_sock_destruct;
 tsk->conn_timeout = CONN_TIMEOUT_DEFAULT;
 tsk->group_is_open = 1;
 atomic_set(&tsk->dupl_rcvcnt, 0);


 tsk->snd_win = tsk_adv_blocks(RCVBUF_MIN);
 tsk->rcv_win = tsk->snd_win;

 if (tipc_sk_type_connectionless(sk)) {
  tsk_set_unreturnable(tsk, 1);
  if (sock->type == 131)
   tsk_set_unreliable(tsk, 1);
 }
 __skb_queue_head_init(&tsk->mc_method.deferredq);
 trace_tipc_sk_create(sk, ((void*)0), TIPC_DUMP_NONE, " ");
 return 0;
}
