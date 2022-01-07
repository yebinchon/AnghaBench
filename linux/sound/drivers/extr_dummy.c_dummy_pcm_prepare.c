
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct snd_pcm_substream*) ;} ;


 TYPE_1__* get_dummy_ops (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int dummy_pcm_prepare(struct snd_pcm_substream *substream)
{
 return get_dummy_ops(substream)->prepare(substream);
}
