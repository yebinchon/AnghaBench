
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; } ;
struct sbq_wait {int wait; struct sbitmap_queue* sbq; } ;
struct sbitmap_queue {int ws_active; } ;


 int add_wait_queue (int *,int *) ;
 int atomic_inc (int *) ;

void sbitmap_add_wait_queue(struct sbitmap_queue *sbq,
       struct sbq_wait_state *ws,
       struct sbq_wait *sbq_wait)
{
 if (!sbq_wait->sbq) {
  sbq_wait->sbq = sbq;
  atomic_inc(&sbq->ws_active);
 }
 add_wait_queue(&ws->wait, &sbq_wait->wait);
}
