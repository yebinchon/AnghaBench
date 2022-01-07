
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct action_ops {int dummy; } ;


 int down_read (int *) ;
 int snd_pcm_action_group (struct action_ops const*,struct snd_pcm_substream*,int,int ) ;
 int snd_pcm_action_single (struct action_ops const*,struct snd_pcm_substream*,int) ;
 int snd_pcm_link_rwsem ;
 scalar_t__ snd_pcm_stream_linked (struct snd_pcm_substream*) ;
 int up_read (int *) ;

__attribute__((used)) static int snd_pcm_action_nonatomic(const struct action_ops *ops,
        struct snd_pcm_substream *substream,
        int state)
{
 int res;


 down_read(&snd_pcm_link_rwsem);
 if (snd_pcm_stream_linked(substream))
  res = snd_pcm_action_group(ops, substream, state, 0);
 else
  res = snd_pcm_action_single(ops, substream, state);
 up_read(&snd_pcm_link_rwsem);
 return res;
}
