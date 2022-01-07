
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; } ;
struct sbq_wait {int wait; struct sbitmap_queue* sbq; } ;
struct sbitmap_queue {int ws_active; } ;


 int atomic_inc (int *) ;
 int prepare_to_wait_exclusive (int *,int *,int) ;

void sbitmap_prepare_to_wait(struct sbitmap_queue *sbq,
        struct sbq_wait_state *ws,
        struct sbq_wait *sbq_wait, int state)
{
 if (!sbq_wait->sbq) {
  atomic_inc(&sbq->ws_active);
  sbq_wait->sbq = sbq;
 }
 prepare_to_wait_exclusive(&ws->wait, &sbq_wait->wait, state);
}
