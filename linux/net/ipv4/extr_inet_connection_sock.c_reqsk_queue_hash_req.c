
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock {int rsk_refcnt; int rsk_timer; } ;


 int TIMER_PINNED ;
 int inet_ehash_insert (int ,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int refcount_set (int *,int) ;
 int req_to_sk (struct request_sock*) ;
 int reqsk_timer_handler ;
 int smp_wmb () ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void reqsk_queue_hash_req(struct request_sock *req,
     unsigned long timeout)
{
 timer_setup(&req->rsk_timer, reqsk_timer_handler, TIMER_PINNED);
 mod_timer(&req->rsk_timer, jiffies + timeout);

 inet_ehash_insert(req_to_sk(req), ((void*)0));



 smp_wmb();
 refcount_set(&req->rsk_refcnt, 2 + 1);
}
