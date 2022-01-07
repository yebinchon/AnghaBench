
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_name; } ;
struct TYPE_2__ {int (* skb_msg_name ) (struct sk_buff*,int ,int *) ;} ;


 int BT_DBG (char*,struct socket*,struct sock*,size_t) ;
 int EOPNOTSUPP ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int RCV_SHUTDOWN ;
 TYPE_1__* bt_sk (struct sock*) ;
 int skb_copy_datagram_msg (struct sk_buff*,int ,struct msghdr*,size_t) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;
 int stub1 (struct sk_buff*,int ,int *) ;

int bt_sock_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
      int flags)
{
 int noblock = flags & MSG_DONTWAIT;
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 size_t copied;
 size_t skblen;
 int err;

 BT_DBG("sock %p sk %p len %zu", sock, sk, len);

 if (flags & MSG_OOB)
  return -EOPNOTSUPP;

 skb = skb_recv_datagram(sk, flags, noblock, &err);
 if (!skb) {
  if (sk->sk_shutdown & RCV_SHUTDOWN)
   return 0;

  return err;
 }

 skblen = skb->len;
 copied = skb->len;
 if (len < copied) {
  msg->msg_flags |= MSG_TRUNC;
  copied = len;
 }

 skb_reset_transport_header(skb);
 err = skb_copy_datagram_msg(skb, 0, msg, copied);
 if (err == 0) {
  sock_recv_ts_and_drops(msg, sk, skb);

  if (msg->msg_name && bt_sk(sk)->skb_msg_name)
   bt_sk(sk)->skb_msg_name(skb, msg->msg_name,
      &msg->msg_namelen);
 }

 skb_free_datagram(sk, skb);

 if (flags & MSG_TRUNC)
  copied = skblen;

 return err ? : copied;
}
