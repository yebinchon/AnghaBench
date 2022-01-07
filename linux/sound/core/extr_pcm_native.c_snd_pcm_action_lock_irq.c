
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct action_ops {int dummy; } ;


 int snd_pcm_action (struct action_ops const*,struct snd_pcm_substream*,int) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_action_lock_irq(const struct action_ops *ops,
       struct snd_pcm_substream *substream,
       int state)
{
 int res;

 snd_pcm_stream_lock_irq(substream);
 res = snd_pcm_action(ops, substream, state);
 snd_pcm_stream_unlock_irq(substream);
 return res;
}
