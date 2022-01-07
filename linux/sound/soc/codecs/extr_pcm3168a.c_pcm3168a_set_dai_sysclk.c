
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct pcm3168a_priv {unsigned int sysclk; int scki; } ;


 int EINVAL ;
 unsigned int PCM3168A_MAX_SYSCLK ;
 int clk_set_rate (int ,unsigned int) ;
 struct pcm3168a_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int pcm3168a_set_dai_sysclk(struct snd_soc_dai *dai,
      int clk_id, unsigned int freq, int dir)
{
 struct pcm3168a_priv *pcm3168a = snd_soc_component_get_drvdata(dai->component);
 int ret;

 if (freq > PCM3168A_MAX_SYSCLK)
  return -EINVAL;

 ret = clk_set_rate(pcm3168a->scki, freq);
 if (ret)
  return ret;

 pcm3168a->sysclk = freq;

 return 0;
}
