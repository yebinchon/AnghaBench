
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; } ;
struct sbq_wait {int * sbq; int wait; } ;
struct sbitmap_queue {int ws_active; } ;


 int atomic_dec (int *) ;
 int finish_wait (int *,int *) ;

void sbitmap_finish_wait(struct sbitmap_queue *sbq, struct sbq_wait_state *ws,
    struct sbq_wait *sbq_wait)
{
 finish_wait(&ws->wait, &sbq_wait->wait);
 if (sbq_wait->sbq) {
  atomic_dec(&sbq->ws_active);
  sbq_wait->sbq = ((void*)0);
 }
}
