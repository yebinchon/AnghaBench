
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
struct l2cap_chan {int mode; void* state; int nesting; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;


 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int) ;
 void* BT_LISTEN ;
 int EBADFD ;
 int EINVAL ;
 int EOPNOTSUPP ;




 int L2CAP_NESTING_PARENT ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int atomic_set (int *,int ) ;
 int disable_ertm ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int l2cap_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 struct l2cap_chan *chan = l2cap_pi(sk)->chan;
 int err = 0;

 BT_DBG("sk %p backlog %d", sk, backlog);

 lock_sock(sk);

 if (sk->sk_state != BT_BOUND) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_SEQPACKET && sk->sk_type != SOCK_STREAM) {
  err = -EINVAL;
  goto done;
 }

 switch (chan->mode) {
 case 131:
 case 129:
  break;
 case 130:
 case 128:
  if (!disable_ertm)
   break;

 default:
  err = -EOPNOTSUPP;
  goto done;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;





 atomic_set(&chan->nesting, L2CAP_NESTING_PARENT);

 chan->state = BT_LISTEN;
 sk->sk_state = BT_LISTEN;

done:
 release_sock(sk);
 return err;
}
