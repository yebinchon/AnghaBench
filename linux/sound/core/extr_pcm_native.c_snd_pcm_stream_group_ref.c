
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_group* group; TYPE_1__* pcm; } ;
struct snd_pcm_group {int lock; int mutex; int refs; } ;
struct TYPE_2__ {int nonatomic; } ;


 int mutex_trylock (int *) ;
 int refcount_inc (int *) ;
 int snd_pcm_group_lock (struct snd_pcm_group*,int) ;
 int snd_pcm_group_unref (struct snd_pcm_group*,struct snd_pcm_substream*) ;
 int snd_pcm_stream_linked (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock (struct snd_pcm_substream*) ;
 int spin_trylock (int *) ;

__attribute__((used)) static struct snd_pcm_group *
snd_pcm_stream_group_ref(struct snd_pcm_substream *substream)
{
 bool nonatomic = substream->pcm->nonatomic;
 struct snd_pcm_group *group;
 bool trylock;

 for (;;) {
  if (!snd_pcm_stream_linked(substream))
   return ((void*)0);
  group = substream->group;

  refcount_inc(&group->refs);

  trylock = nonatomic ? mutex_trylock(&group->mutex) :
   spin_trylock(&group->lock);
  if (trylock)
   break;


  snd_pcm_stream_unlock(substream);
  snd_pcm_group_lock(group, nonatomic);
  snd_pcm_stream_lock(substream);


  if (substream->group == group)
   break;

  snd_pcm_group_unref(group, substream);
 }
 return group;
}
