
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int AICA_CONTROL_CHANNEL_SAMPLE_NUMBER ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long snd_aicapcm_pcm_pointer(struct snd_pcm_substream
          *substream)
{
 return readl(AICA_CONTROL_CHANNEL_SAMPLE_NUMBER);
}
