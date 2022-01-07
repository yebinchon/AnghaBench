
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int dummy; } ;


 int __dequeue_dl_entity (struct sched_dl_entity*) ;

__attribute__((used)) static void dequeue_dl_entity(struct sched_dl_entity *dl_se)
{
 __dequeue_dl_entity(dl_se);
}
