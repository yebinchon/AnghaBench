
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct request_sock_queue {int rskq_lock; struct request_sock* rskq_accept_tail; int * rskq_accept_head; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct TYPE_2__ {struct request_sock_queue icsk_accept_queue; } ;


 scalar_t__ TCP_LISTEN ;
 int WRITE_ONCE (int *,struct request_sock*) ;
 int inet_child_forget (struct sock*,struct request_sock*,struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int sk_acceptq_added (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

struct sock *inet_csk_reqsk_queue_add(struct sock *sk,
          struct request_sock *req,
          struct sock *child)
{
 struct request_sock_queue *queue = &inet_csk(sk)->icsk_accept_queue;

 spin_lock(&queue->rskq_lock);
 if (unlikely(sk->sk_state != TCP_LISTEN)) {
  inet_child_forget(sk, req, child);
  child = ((void*)0);
 } else {
  req->sk = child;
  req->dl_next = ((void*)0);
  if (queue->rskq_accept_head == ((void*)0))
   WRITE_ONCE(queue->rskq_accept_head, req);
  else
   queue->rskq_accept_tail->dl_next = req;
  queue->rskq_accept_tail = req;
  sk_acceptq_added(sk);
 }
 spin_unlock(&queue->rskq_lock);
 return child;
}
