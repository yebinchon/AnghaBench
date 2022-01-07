
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; scalar_t__ sk_protocol; } ;
struct TYPE_3__ {int lock; } ;
struct request_sock_queue {TYPE_1__ fastopenq; } ;
struct request_sock {struct sock* sk; } ;
struct inet_connection_sock {struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_4__ {scalar_t__ tfo_listener; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ IPPROTO_TCP ;
 int O_NONBLOCK ;
 scalar_t__ TCP_LISTEN ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_wait_for_connect (struct sock*,long) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int reqsk_put (struct request_sock*) ;
 scalar_t__ reqsk_queue_empty (struct request_sock_queue*) ;
 struct request_sock* reqsk_queue_remove (struct request_sock_queue*,struct sock*) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;

struct sock *inet_csk_accept(struct sock *sk, int flags, int *err, bool kern)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct request_sock_queue *queue = &icsk->icsk_accept_queue;
 struct request_sock *req;
 struct sock *newsk;
 int error;

 lock_sock(sk);




 error = -EINVAL;
 if (sk->sk_state != TCP_LISTEN)
  goto out_err;


 if (reqsk_queue_empty(queue)) {
  long timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);


  error = -EAGAIN;
  if (!timeo)
   goto out_err;

  error = inet_csk_wait_for_connect(sk, timeo);
  if (error)
   goto out_err;
 }
 req = reqsk_queue_remove(queue, sk);
 newsk = req->sk;

 if (sk->sk_protocol == IPPROTO_TCP &&
     tcp_rsk(req)->tfo_listener) {
  spin_lock_bh(&queue->fastopenq.lock);
  if (tcp_rsk(req)->tfo_listener) {






   req->sk = ((void*)0);
   req = ((void*)0);
  }
  spin_unlock_bh(&queue->fastopenq.lock);
 }
out:
 release_sock(sk);
 if (req)
  reqsk_put(req);
 return newsk;
out_err:
 newsk = ((void*)0);
 req = ((void*)0);
 *err = error;
 goto out;
}
