
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct sbq_wait {TYPE_2__* sbq; TYPE_1__ wait; } ;
struct TYPE_4__ {int ws_active; } ;


 int atomic_dec (int *) ;
 int list_del_init (int *) ;

void sbitmap_del_wait_queue(struct sbq_wait *sbq_wait)
{
 list_del_init(&sbq_wait->wait.entry);
 if (sbq_wait->sbq) {
  atomic_dec(&sbq_wait->sbq->ws_active);
  sbq_wait->sbq = ((void*)0);
 }
}
