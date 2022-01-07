
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int src; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int) ;
 scalar_t__ BT_LISTEN ;
 int EADDRINUSE ;
 int EBADFD ;
 int EINVAL ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ __sco_get_sock_listen_by_addr (int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_2__* sco_pi (struct sock*) ;
 TYPE_1__ sco_sk_list ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int sco_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 bdaddr_t *src = &sco_pi(sk)->src;
 int err = 0;

 BT_DBG("sk %p backlog %d", sk, backlog);

 lock_sock(sk);

 if (sk->sk_state != BT_BOUND) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_SEQPACKET) {
  err = -EINVAL;
  goto done;
 }

 write_lock(&sco_sk_list.lock);

 if (__sco_get_sock_listen_by_addr(src)) {
  err = -EADDRINUSE;
  goto unlock;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;

 sk->sk_state = BT_LISTEN;

unlock:
 write_unlock(&sco_sk_list.lock);

done:
 release_sock(sk);
 return err;
}
