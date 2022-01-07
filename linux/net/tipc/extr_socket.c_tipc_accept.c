
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int conn_instance; int conn_type; } ;
struct tipc_msg {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int * member_0; } ;


 int EINVAL ;
 int O_NONBLOCK ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ TIPC_LISTEN ;
 int __skb_dequeue (int *) ;
 int __skb_queue_head (int *,struct sk_buff*) ;
 int __tipc_sendstream (struct socket*,struct msghdr*,int ) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_importance (struct tipc_msg*) ;
 scalar_t__ msg_named (struct tipc_msg*) ;
 int msg_nameinst (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int release_sock (struct sock*) ;
 int security_sk_clone (struct sock*,struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_net (struct sock*) ;
 long sock_rcvtimeo (struct sock*,int) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_create (int ,struct socket*,int ,int) ;
 int tipc_sk_finish_conn (struct tipc_sock*,int ,int ) ;
 int tipc_wait_for_accept (struct socket*,long) ;
 int tsk_advance_rx_queue (struct sock*) ;
 int tsk_rej_rx_queue (struct sock*) ;
 int tsk_set_importance (struct tipc_sock*,int ) ;

__attribute__((used)) static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
         bool kern)
{
 struct sock *new_sk, *sk = sock->sk;
 struct sk_buff *buf;
 struct tipc_sock *new_tsock;
 struct tipc_msg *msg;
 long timeo;
 int res;

 lock_sock(sk);

 if (sk->sk_state != TIPC_LISTEN) {
  res = -EINVAL;
  goto exit;
 }
 timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);
 res = tipc_wait_for_accept(sock, timeo);
 if (res)
  goto exit;

 buf = skb_peek(&sk->sk_receive_queue);

 res = tipc_sk_create(sock_net(sock->sk), new_sock, 0, kern);
 if (res)
  goto exit;
 security_sk_clone(sock->sk, new_sock->sk);

 new_sk = new_sock->sk;
 new_tsock = tipc_sk(new_sk);
 msg = buf_msg(buf);


 lock_sock_nested(new_sk, SINGLE_DEPTH_NESTING);





 tsk_rej_rx_queue(new_sk);


 tipc_sk_finish_conn(new_tsock, msg_origport(msg), msg_orignode(msg));

 tsk_set_importance(new_tsock, msg_importance(msg));
 if (msg_named(msg)) {
  new_tsock->conn_type = msg_nametype(msg);
  new_tsock->conn_instance = msg_nameinst(msg);
 }





 if (!msg_data_sz(msg)) {
  struct msghdr m = {((void*)0),};

  tsk_advance_rx_queue(sk);
  __tipc_sendstream(new_sock, &m, 0);
 } else {
  __skb_dequeue(&sk->sk_receive_queue);
  __skb_queue_head(&new_sk->sk_receive_queue, buf);
  skb_set_owner_r(buf, new_sk);
 }
 release_sock(new_sk);
exit:
 release_sock(sk);
 return res;
}
