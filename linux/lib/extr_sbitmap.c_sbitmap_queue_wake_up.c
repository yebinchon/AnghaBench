
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int dummy; } ;


 scalar_t__ __sbq_wake_up (struct sbitmap_queue*) ;

void sbitmap_queue_wake_up(struct sbitmap_queue *sbq)
{
 while (__sbq_wake_up(sbq))
  ;
}
