
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int icsk_accept_queue; } ;


 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 scalar_t__ inet_csk_reqsk_queue_add (struct sock*,struct request_sock*,struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*) ;
 int reqsk_queue_removed (int *,struct request_sock*) ;
 int sock_put (struct sock*) ;

struct sock *inet_csk_complete_hashdance(struct sock *sk, struct sock *child,
      struct request_sock *req, bool own_req)
{
 if (own_req) {
  inet_csk_reqsk_queue_drop(sk, req);
  reqsk_queue_removed(&inet_csk(sk)->icsk_accept_queue, req);
  if (inet_csk_reqsk_queue_add(sk, req, child))
   return child;
 }

 bh_unlock_sock(child);
 sock_put(child);
 return ((void*)0);
}
