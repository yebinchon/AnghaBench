
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int EPIPE ;
 int MSG_NOSIGNAL ;
 int SIGPIPE ;
 int current ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ sock_error (struct sock*) ;

int sk_stream_error(struct sock *sk, int flags, int err)
{
 if (err == -EPIPE)
  err = sock_error(sk) ? : -EPIPE;
 if (err == -EPIPE && !(flags & MSG_NOSIGNAL))
  send_sig(SIGPIPE, current, 0);
 return err;
}
