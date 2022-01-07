
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_flags; int * msg_name; } ;
typedef int sa ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int MSG_CMSG_COMPAT ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int __sockaddr_check_size (int) ;
 int memcpy (int *,struct sockaddr_pn*,int) ;
 int pn_skb_get_src_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 int skb_copy_datagram_msg (struct sk_buff*,int ,struct msghdr*,int) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;

__attribute__((used)) static int pn_recvmsg(struct sock *sk, struct msghdr *msg, size_t len,
        int noblock, int flags, int *addr_len)
{
 struct sk_buff *skb = ((void*)0);
 struct sockaddr_pn sa;
 int rval = -EOPNOTSUPP;
 int copylen;

 if (flags & ~(MSG_PEEK|MSG_TRUNC|MSG_DONTWAIT|MSG_NOSIGNAL|
   MSG_CMSG_COMPAT))
  goto out_nofree;

 skb = skb_recv_datagram(sk, flags, noblock, &rval);
 if (skb == ((void*)0))
  goto out_nofree;

 pn_skb_get_src_sockaddr(skb, &sa);

 copylen = skb->len;
 if (len < copylen) {
  msg->msg_flags |= MSG_TRUNC;
  copylen = len;
 }

 rval = skb_copy_datagram_msg(skb, 0, msg, copylen);
 if (rval) {
  rval = -EFAULT;
  goto out;
 }

 rval = (flags & MSG_TRUNC) ? skb->len : copylen;

 if (msg->msg_name != ((void*)0)) {
  __sockaddr_check_size(sizeof(sa));
  memcpy(msg->msg_name, &sa, sizeof(sa));
  *addr_len = sizeof(sa);
 }

out:
 skb_free_datagram(sk, skb);

out_nofree:
 return rval;
}
