
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct snd_pcm_group {int refs; } ;
struct TYPE_2__ {int nonatomic; } ;


 int kfree (struct snd_pcm_group*) ;
 int refcount_dec_and_test (int *) ;
 int snd_pcm_group_unlock (struct snd_pcm_group*,int ) ;

__attribute__((used)) static void snd_pcm_group_unref(struct snd_pcm_group *group,
    struct snd_pcm_substream *substream)
{
 bool do_free;

 if (!group)
  return;
 do_free = refcount_dec_and_test(&group->refs);
 snd_pcm_group_unlock(group, substream->pcm->nonatomic);
 if (do_free)
  kfree(group);
}
