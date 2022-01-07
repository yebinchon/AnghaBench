
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {int expires; } ;
struct request_sock {struct request_sock* dl_next; TYPE_1__ rsk_timer; } ;
struct fastopen_queue {scalar_t__ max_qlen; scalar_t__ qlen; int lock; struct request_sock* rskq_rst_head; } ;
struct TYPE_5__ {struct fastopen_queue fastopenq; } ;
struct TYPE_6__ {TYPE_2__ icsk_accept_queue; } ;


 int LINUX_MIB_TCPFASTOPENLISTENOVERFLOW ;
 int __NET_INC_STATS (int ,int ) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int jiffies ;
 int reqsk_put (struct request_sock*) ;
 int sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static bool tcp_fastopen_queue_check(struct sock *sk)
{
 struct fastopen_queue *fastopenq;
 fastopenq = &inet_csk(sk)->icsk_accept_queue.fastopenq;
 if (fastopenq->max_qlen == 0)
  return 0;

 if (fastopenq->qlen >= fastopenq->max_qlen) {
  struct request_sock *req1;
  spin_lock(&fastopenq->lock);
  req1 = fastopenq->rskq_rst_head;
  if (!req1 || time_after(req1->rsk_timer.expires, jiffies)) {
   __NET_INC_STATS(sock_net(sk),
     LINUX_MIB_TCPFASTOPENLISTENOVERFLOW);
   spin_unlock(&fastopenq->lock);
   return 0;
  }
  fastopenq->rskq_rst_head = req1->dl_next;
  fastopenq->qlen--;
  spin_unlock(&fastopenq->lock);
  reqsk_put(req1);
 }
 return 1;
}
