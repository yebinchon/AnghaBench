
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_ack_backlog; int sk_receive_queue; int sk_rcvtimeo; } ;
struct sk_buff {struct sock* sk; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SOCK_SEQPACKET ;
 int SS_CONNECTED ;
 scalar_t__ TCP_LISTEN ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_graft (struct sock*,struct socket*) ;
 int x25_wait_for_data (struct sock*,int ) ;

__attribute__((used)) static int x25_accept(struct socket *sock, struct socket *newsock, int flags,
        bool kern)
{
 struct sock *sk = sock->sk;
 struct sock *newsk;
 struct sk_buff *skb;
 int rc = -EINVAL;

 if (!sk)
  goto out;

 rc = -EOPNOTSUPP;
 if (sk->sk_type != SOCK_SEQPACKET)
  goto out;

 lock_sock(sk);
 rc = -EINVAL;
 if (sk->sk_state != TCP_LISTEN)
  goto out2;

 rc = x25_wait_for_data(sk, sk->sk_rcvtimeo);
 if (rc)
  goto out2;
 skb = skb_dequeue(&sk->sk_receive_queue);
 rc = -EINVAL;
 if (!skb->sk)
  goto out2;
 newsk = skb->sk;
 sock_graft(newsk, newsock);


 skb->sk = ((void*)0);
 kfree_skb(skb);
 sk->sk_ack_backlog--;
 newsock->state = SS_CONNECTED;
 rc = 0;
out2:
 release_sock(sk);
out:
 return rc;
}
