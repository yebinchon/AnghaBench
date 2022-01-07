
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {scalar_t__ need_bytes; int work; int sk; scalar_t__ paused; int stopped; } ;


 int ENOMEM ;
 int queue_work (int ,int *) ;
 scalar_t__ sock_owned_by_user_nocheck (int ) ;
 scalar_t__ strp_peek_len (struct strparser*) ;
 int strp_read_sock (struct strparser*) ;
 int strp_wq ;
 scalar_t__ unlikely (int ) ;

void strp_data_ready(struct strparser *strp)
{
 if (unlikely(strp->stopped) || strp->paused)
  return;
 if (sock_owned_by_user_nocheck(strp->sk)) {
  queue_work(strp_wq, &strp->work);
  return;
 }

 if (strp->need_bytes) {
  if (strp_peek_len(strp) < strp->need_bytes)
   return;
 }

 if (strp_read_sock(strp) == -ENOMEM)
  queue_work(strp_wq, &strp->work);
}
