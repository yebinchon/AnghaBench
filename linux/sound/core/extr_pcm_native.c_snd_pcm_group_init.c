
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_group {int refs; int substreams; int mutex; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

void snd_pcm_group_init(struct snd_pcm_group *group)
{
 spin_lock_init(&group->lock);
 mutex_init(&group->mutex);
 INIT_LIST_HEAD(&group->substreams);
 refcount_set(&group->refs, 1);
}
