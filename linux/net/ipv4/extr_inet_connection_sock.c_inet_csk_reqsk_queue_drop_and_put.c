
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct request_sock {int dummy; } ;


 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*) ;
 int reqsk_put (struct request_sock*) ;

void inet_csk_reqsk_queue_drop_and_put(struct sock *sk, struct request_sock *req)
{
 inet_csk_reqsk_queue_drop(sk, req);
 reqsk_put(req);
}
