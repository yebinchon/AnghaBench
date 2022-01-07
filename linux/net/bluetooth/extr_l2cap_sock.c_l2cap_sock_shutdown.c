
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_err; scalar_t__ sk_lingertime; scalar_t__ sk_shutdown; } ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_chan {scalar_t__ state; scalar_t__ mode; scalar_t__ unacked_frames; struct l2cap_conn* conn; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;


 int BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 scalar_t__ L2CAP_MODE_ERTM ;
 int PF_EXITING ;
 scalar_t__ SHUTDOWN_MASK ;
 int SOCK_LINGER ;
 int __l2cap_wait_ack (struct sock*,struct l2cap_chan*) ;
 int bt_sock_wait_state (struct sock*,int ,scalar_t__) ;
 TYPE_2__* current ;
 int l2cap_chan_close (struct l2cap_chan*,int ) ;
 int l2cap_chan_hold (struct l2cap_chan*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_conn_get (struct l2cap_conn*) ;
 int l2cap_conn_put (struct l2cap_conn*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int state_to_string (scalar_t__) ;

__attribute__((used)) static int l2cap_sock_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 struct l2cap_chan *chan;
 struct l2cap_conn *conn;
 int err = 0;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (!sk)
  return 0;

 lock_sock(sk);

 if (sk->sk_shutdown)
  goto shutdown_already;

 BT_DBG("Handling sock shutdown");


 sock_hold(sk);

 chan = l2cap_pi(sk)->chan;

 l2cap_chan_hold(chan);

 BT_DBG("chan %p state %s", chan, state_to_string(chan->state));

 if (chan->mode == L2CAP_MODE_ERTM &&
     chan->unacked_frames > 0 &&
     chan->state == BT_CONNECTED) {
  err = __l2cap_wait_ack(sk, chan);





  if (sk->sk_shutdown)
   goto has_shutdown;
 }

 sk->sk_shutdown = SHUTDOWN_MASK;
 release_sock(sk);

 l2cap_chan_lock(chan);
 conn = chan->conn;
 if (conn)

  l2cap_conn_get(conn);
 l2cap_chan_unlock(chan);

 if (conn)

  mutex_lock(&conn->chan_lock);

 l2cap_chan_lock(chan);
 l2cap_chan_close(chan, 0);
 l2cap_chan_unlock(chan);

 if (conn) {
  mutex_unlock(&conn->chan_lock);
  l2cap_conn_put(conn);
 }

 lock_sock(sk);

 if (sock_flag(sk, SOCK_LINGER) && sk->sk_lingertime &&
     !(current->flags & PF_EXITING))
  err = bt_sock_wait_state(sk, BT_CLOSED,
      sk->sk_lingertime);

has_shutdown:
 l2cap_chan_put(chan);
 sock_put(sk);

shutdown_already:
 if (!err && sk->sk_err)
  err = -sk->sk_err;

 release_sock(sk);

 BT_DBG("Sock shutdown complete err: %d", err);

 return err;
}
