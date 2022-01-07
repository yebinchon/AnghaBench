
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct request_sock {struct request_sock* dl_next; TYPE_2__ rsk_timer; scalar_t__ sk; struct sock* rsk_listener; } ;
struct fastopen_queue {int lock; int qlen; struct request_sock* rskq_rst_tail; struct request_sock* rskq_rst_head; } ;
struct TYPE_6__ {struct fastopen_queue fastopenq; } ;
struct TYPE_10__ {TYPE_1__ icsk_accept_queue; } ;
struct TYPE_9__ {int tfo_listener; } ;
struct TYPE_8__ {int fastopen_rsk; } ;


 int HZ ;
 int RCU_INIT_POINTER (int ,int *) ;
 scalar_t__ TCP_LISTEN ;
 TYPE_5__* inet_csk (struct sock*) ;
 scalar_t__ jiffies ;
 int reqsk_put (struct request_sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_4__* tcp_rsk (struct request_sock*) ;
 TYPE_3__* tcp_sk (struct sock*) ;

void reqsk_fastopen_remove(struct sock *sk, struct request_sock *req,
      bool reset)
{
 struct sock *lsk = req->rsk_listener;
 struct fastopen_queue *fastopenq;

 fastopenq = &inet_csk(lsk)->icsk_accept_queue.fastopenq;

 RCU_INIT_POINTER(tcp_sk(sk)->fastopen_rsk, ((void*)0));
 spin_lock_bh(&fastopenq->lock);
 fastopenq->qlen--;
 tcp_rsk(req)->tfo_listener = 0;
 if (req->sk)
  goto out;

 if (!reset || lsk->sk_state != TCP_LISTEN) {



  spin_unlock_bh(&fastopenq->lock);
  reqsk_put(req);
  return;
 }







 req->rsk_timer.expires = jiffies + 60*HZ;
 if (fastopenq->rskq_rst_head == ((void*)0))
  fastopenq->rskq_rst_head = req;
 else
  fastopenq->rskq_rst_tail->dl_next = req;

 req->dl_next = ((void*)0);
 fastopenq->rskq_rst_tail = req;
 fastopenq->qlen++;
out:
 spin_unlock_bh(&fastopenq->lock);
}
