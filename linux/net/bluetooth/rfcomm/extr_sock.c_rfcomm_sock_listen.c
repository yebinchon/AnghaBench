
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int channel; int src; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int) ;
 scalar_t__ BT_LISTEN ;
 int EBADFD ;
 int EINVAL ;
 scalar_t__ SOCK_STREAM ;
 int __rfcomm_get_listen_sock_by_addr (int,int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_2__* rfcomm_pi (struct sock*) ;
 TYPE_1__ rfcomm_sk_list ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int rfcomm_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err = 0;

 BT_DBG("sk %p backlog %d", sk, backlog);

 lock_sock(sk);

 if (sk->sk_state != BT_BOUND) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_STREAM) {
  err = -EINVAL;
  goto done;
 }

 if (!rfcomm_pi(sk)->channel) {
  bdaddr_t *src = &rfcomm_pi(sk)->src;
  u8 channel;

  err = -EINVAL;

  write_lock(&rfcomm_sk_list.lock);

  for (channel = 1; channel < 31; channel++)
   if (!__rfcomm_get_listen_sock_by_addr(channel, src)) {
    rfcomm_pi(sk)->channel = channel;
    err = 0;
    break;
   }

  write_unlock(&rfcomm_sk_list.lock);

  if (err < 0)
   goto done;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = BT_LISTEN;

done:
 release_sock(sk);
 return err;
}
