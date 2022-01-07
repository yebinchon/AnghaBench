
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int icsk_accept_queue; } ;


 TYPE_1__* inet_csk (struct sock*) ;
 int reqsk_put (struct request_sock*) ;
 int reqsk_queue_removed (int *,struct request_sock*) ;
 scalar_t__ reqsk_queue_unlink (struct request_sock*) ;

void inet_csk_reqsk_queue_drop(struct sock *sk, struct request_sock *req)
{
 if (reqsk_queue_unlink(req)) {
  reqsk_queue_removed(&inet_csk(sk)->icsk_accept_queue, req);
  reqsk_put(req);
 }
}
