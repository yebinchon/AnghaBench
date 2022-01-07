
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpressure {int work; int events; int events_lock; int sr_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int vmpressure_work_fn ;

void vmpressure_init(struct vmpressure *vmpr)
{
 spin_lock_init(&vmpr->sr_lock);
 mutex_init(&vmpr->events_lock);
 INIT_LIST_HEAD(&vmpr->events);
 INIT_WORK(&vmpr->work, vmpressure_work_fn);
}
