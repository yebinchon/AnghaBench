
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct request_sock {int dummy; } ;


 int inet_csk_reqsk_queue_added (struct sock*) ;
 int reqsk_queue_hash_req (struct request_sock*,unsigned long) ;

void inet_csk_reqsk_queue_hash_add(struct sock *sk, struct request_sock *req,
       unsigned long timeout)
{
 reqsk_queue_hash_req(req, timeout);
 inet_csk_reqsk_queue_added(sk);
}
