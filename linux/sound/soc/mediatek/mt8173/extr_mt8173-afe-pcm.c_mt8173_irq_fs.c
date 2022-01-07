
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int mt8173_afe_i2s_fs (unsigned int) ;

__attribute__((used)) static int mt8173_irq_fs(struct snd_pcm_substream *substream, unsigned int rate)
{
 return mt8173_afe_i2s_fs(rate);
}
