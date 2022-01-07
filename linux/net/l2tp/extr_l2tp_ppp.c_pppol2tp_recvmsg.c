
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_state; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; } ;


 int EIO ;
 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 int PPPOX_BOUND ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int skb_copy_datagram_msg (struct sk_buff*,int ,struct msghdr*,size_t) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;

__attribute__((used)) static int pppol2tp_recvmsg(struct socket *sock, struct msghdr *msg,
       size_t len, int flags)
{
 int err;
 struct sk_buff *skb;
 struct sock *sk = sock->sk;

 err = -EIO;
 if (sk->sk_state & PPPOX_BOUND)
  goto end;

 err = 0;
 skb = skb_recv_datagram(sk, flags & ~MSG_DONTWAIT,
    flags & MSG_DONTWAIT, &err);
 if (!skb)
  goto end;

 if (len > skb->len)
  len = skb->len;
 else if (len < skb->len)
  msg->msg_flags |= MSG_TRUNC;

 err = skb_copy_datagram_msg(skb, 0, msg, len);
 if (likely(err == 0))
  err = len;

 kfree_skb(skb);
end:
 return err;
}
