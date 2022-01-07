
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubuf_info {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; struct sock* sk; } ;
struct iov_iter {int dummy; } ;
struct msghdr {struct iov_iter msg_iter; } ;


 int EEXIST ;
 int EFAULT ;
 int EMSGSIZE ;
 int ___pskb_trim (struct sk_buff*,int) ;
 int __zerocopy_sg_from_iter (struct sock*,struct sk_buff*,struct iov_iter*,int) ;
 struct ubuf_info* skb_zcopy (struct sk_buff*) ;
 int skb_zcopy_set (struct sk_buff*,struct ubuf_info*,int *) ;

int skb_zerocopy_iter_stream(struct sock *sk, struct sk_buff *skb,
        struct msghdr *msg, int len,
        struct ubuf_info *uarg)
{
 struct ubuf_info *orig_uarg = skb_zcopy(skb);
 struct iov_iter orig_iter = msg->msg_iter;
 int err, orig_len = skb->len;




 if (orig_uarg && uarg != orig_uarg)
  return -EEXIST;

 err = __zerocopy_sg_from_iter(sk, skb, &msg->msg_iter, len);
 if (err == -EFAULT || (err == -EMSGSIZE && skb->len == orig_len)) {
  struct sock *save_sk = skb->sk;


  msg->msg_iter = orig_iter;
  skb->sk = sk;
  ___pskb_trim(skb, orig_len);
  skb->sk = save_sk;
  return err;
 }

 skb_zcopy_set(skb, uarg, ((void*)0));
 return skb->len - orig_len;
}
