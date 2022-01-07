
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int (* pointer ) (struct snd_pcm_substream*) ;} ;


 TYPE_1__* get_dummy_ops (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t dummy_pcm_pointer(struct snd_pcm_substream *substream)
{
 return get_dummy_ops(substream)->pointer(substream);
}
