
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdspm {int dummy; } ;


 int hdspm_write (struct hdspm*,unsigned int,int ) ;
 int snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,int) ;

__attribute__((used)) static void hdspm_set_channel_dma_addr(struct hdspm *hdspm,
           struct snd_pcm_substream *substream,
           unsigned int reg, int channel)
{
 int i;

 for (i = channel * 16; i < channel * 16 + 16; i++)
  hdspm_write(hdspm, reg + 4 * i,
       snd_pcm_sgbuf_get_addr(substream, 4096 * i));
}
