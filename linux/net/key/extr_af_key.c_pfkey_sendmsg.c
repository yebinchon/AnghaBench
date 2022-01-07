
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_sndbuf; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int dummy; } ;
struct TYPE_2__ {int xfrm_cfg_mutex; } ;
struct net {TYPE_1__ xfrm; } ;
struct msghdr {int msg_flags; } ;


 int EFAULT ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int MSG_OOB ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcpy_from_msg (int ,struct msghdr*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pfkey_error (struct sadb_msg*,int,struct sock*) ;
 struct sadb_msg* pfkey_get_base_msg (struct sk_buff*,int*) ;
 int pfkey_process (struct sock*,struct sk_buff*,struct sadb_msg*) ;
 int skb_put (struct sk_buff*,size_t) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int pfkey_sendmsg(struct socket *sock, struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct sk_buff *skb = ((void*)0);
 struct sadb_msg *hdr = ((void*)0);
 int err;
 struct net *net = sock_net(sk);

 err = -EOPNOTSUPP;
 if (msg->msg_flags & MSG_OOB)
  goto out;

 err = -EMSGSIZE;
 if ((unsigned int)len > sk->sk_sndbuf - 32)
  goto out;

 err = -ENOBUFS;
 skb = alloc_skb(len, GFP_KERNEL);
 if (skb == ((void*)0))
  goto out;

 err = -EFAULT;
 if (memcpy_from_msg(skb_put(skb,len), msg, len))
  goto out;

 hdr = pfkey_get_base_msg(skb, &err);
 if (!hdr)
  goto out;

 mutex_lock(&net->xfrm.xfrm_cfg_mutex);
 err = pfkey_process(sk, skb, hdr);
 mutex_unlock(&net->xfrm.xfrm_cfg_mutex);

out:
 if (err && hdr && pfkey_error(hdr, err, sk) == 0)
  err = 0;
 kfree_skb(skb);

 return err ? : len;
}
