
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; } ;
struct TYPE_2__ {int lock; struct request_sock* rskq_rst_head; } ;
struct request_sock_queue {TYPE_1__ fastopenq; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct inet_connection_sock {struct request_sock_queue icsk_accept_queue; } ;


 int WARN_ON (int ) ;
 int WARN_ON_ONCE (int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int cond_resched () ;
 int inet_child_forget (struct sock*,struct request_sock*,struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int reqsk_put (struct request_sock*) ;
 struct request_sock* reqsk_queue_remove (struct request_sock_queue*,struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void inet_csk_listen_stop(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct request_sock_queue *queue = &icsk->icsk_accept_queue;
 struct request_sock *next, *req;
 while ((req = reqsk_queue_remove(queue, sk)) != ((void*)0)) {
  struct sock *child = req->sk;

  local_bh_disable();
  bh_lock_sock(child);
  WARN_ON(sock_owned_by_user(child));
  sock_hold(child);

  inet_child_forget(sk, req, child);
  reqsk_put(req);
  bh_unlock_sock(child);
  local_bh_enable();
  sock_put(child);

  cond_resched();
 }
 if (queue->fastopenq.rskq_rst_head) {

  spin_lock_bh(&queue->fastopenq.lock);
  req = queue->fastopenq.rskq_rst_head;
  queue->fastopenq.rskq_rst_head = ((void*)0);
  spin_unlock_bh(&queue->fastopenq.lock);
  while (req != ((void*)0)) {
   next = req->dl_next;
   reqsk_put(req);
   req = next;
  }
 }
 WARN_ON_ONCE(sk->sk_ack_backlog);
}
