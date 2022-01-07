
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct TYPE_4__ {int lock; } ;
struct sock {TYPE_2__ sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct msghdr {int msg_flags; scalar_t__ msg_namelen; } ;
struct TYPE_3__ {int tx_work_scheduled; int tx_work; struct nfc_dev* dev; } ;


 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ SS_CONNECTED ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_from_msg (int ,struct msghdr*,size_t) ;
 struct sk_buff* nfc_alloc_send_skb (struct nfc_dev*,struct sock*,int ,size_t,int*) ;
 TYPE_1__* nfc_rawsock (struct sock*) ;
 int pr_debug (char*,struct socket*,struct sock*,size_t) ;
 int schedule_work (int *) ;
 int skb_put (struct sk_buff*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rawsock_sendmsg(struct socket *sock, struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct nfc_dev *dev = nfc_rawsock(sk)->dev;
 struct sk_buff *skb;
 int rc;

 pr_debug("sock=%p sk=%p len=%zu\n", sock, sk, len);

 if (msg->msg_namelen)
  return -EOPNOTSUPP;

 if (sock->state != SS_CONNECTED)
  return -ENOTCONN;

 skb = nfc_alloc_send_skb(dev, sk, msg->msg_flags, len, &rc);
 if (skb == ((void*)0))
  return rc;

 rc = memcpy_from_msg(skb_put(skb, len), msg, len);
 if (rc < 0) {
  kfree_skb(skb);
  return rc;
 }

 spin_lock_bh(&sk->sk_write_queue.lock);
 __skb_queue_tail(&sk->sk_write_queue, skb);
 if (!nfc_rawsock(sk)->tx_work_scheduled) {
  schedule_work(&nfc_rawsock(sk)->tx_work);
  nfc_rawsock(sk)->tx_work_scheduled = 1;
 }
 spin_unlock_bh(&sk->sk_write_queue.lock);

 return len;
}
