
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_flags; } ;


 int EOPNOTSUPP ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int caif_check_flow_release (struct sock*) ;
 int skb_copy_datagram_msg (struct sk_buff*,int ,struct msghdr*,int) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int ,int*) ;

__attribute__((used)) static int caif_seqpkt_recvmsg(struct socket *sock, struct msghdr *m,
          size_t len, int flags)

{
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 int ret;
 int copylen;

 ret = -EOPNOTSUPP;
 if (flags & MSG_OOB)
  goto read_error;

 skb = skb_recv_datagram(sk, flags, 0 , &ret);
 if (!skb)
  goto read_error;
 copylen = skb->len;
 if (len < copylen) {
  m->msg_flags |= MSG_TRUNC;
  copylen = len;
 }

 ret = skb_copy_datagram_msg(skb, 0, m, copylen);
 if (ret)
  goto out_free;

 ret = (flags & MSG_TRUNC) ? skb->len : copylen;
out_free:
 skb_free_datagram(sk, skb);
 caif_check_flow_release(sk);
 return ret;

read_error:
 return ret;
}
