
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {unsigned int len; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_2__ {int channel; } ;


 scalar_t__ BT_CLOSED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int EOPNOTSUPP ;
 int HCI_CHANNEL_LOGGING ;



 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int hci_mgmt_chan_find (int) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int hci_sock_cmsg (struct sock*,struct msghdr*,struct sk_buff*) ;
 int skb_copy_datagram_msg (struct sk_buff*,int ,struct msghdr*,int) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_recv_timestamp (struct msghdr*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static int hci_sock_recvmsg(struct socket *sock, struct msghdr *msg,
       size_t len, int flags)
{
 int noblock = flags & MSG_DONTWAIT;
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 int copied, err;
 unsigned int skblen;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (flags & MSG_OOB)
  return -EOPNOTSUPP;

 if (hci_pi(sk)->channel == HCI_CHANNEL_LOGGING)
  return -EOPNOTSUPP;

 if (sk->sk_state == BT_CLOSED)
  return 0;

 skb = skb_recv_datagram(sk, flags, noblock, &err);
 if (!skb)
  return err;

 skblen = skb->len;
 copied = skb->len;
 if (len < copied) {
  msg->msg_flags |= MSG_TRUNC;
  copied = len;
 }

 skb_reset_transport_header(skb);
 err = skb_copy_datagram_msg(skb, 0, msg, copied);

 switch (hci_pi(sk)->channel) {
 case 129:
  hci_sock_cmsg(sk, msg, skb);
  break;
 case 128:
 case 130:
  sock_recv_timestamp(msg, sk, skb);
  break;
 default:
  if (hci_mgmt_chan_find(hci_pi(sk)->channel))
   sock_recv_timestamp(msg, sk, skb);
  break;
 }

 skb_free_datagram(sk, skb);

 if (flags & MSG_TRUNC)
  copied = skblen;

 return err ? : copied;
}
