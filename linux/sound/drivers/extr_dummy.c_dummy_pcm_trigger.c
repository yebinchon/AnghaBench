
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* start ) (struct snd_pcm_substream*) ;int (* stop ) (struct snd_pcm_substream*) ;} ;


 int EINVAL ;




 TYPE_1__* get_dummy_ops (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*) ;

__attribute__((used)) static int dummy_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 switch (cmd) {
 case 130:
 case 131:
  return get_dummy_ops(substream)->start(substream);
 case 129:
 case 128:
  return get_dummy_ops(substream)->stop(substream);
 }
 return -EINVAL;
}
