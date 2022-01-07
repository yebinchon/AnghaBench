
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pbus; } ;
struct hal2_codec {TYPE_2__ pbus; int pcm_indirect; } ;
struct snd_hal2 {struct hal2_codec adc; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_3__ {int pbdma_bptr; } ;


 int snd_pcm_indirect_capture_pointer (struct snd_pcm_substream*,int *,int ) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
hal2_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 struct hal2_codec *adc = &hal2->adc;

 return snd_pcm_indirect_capture_pointer(substream, &adc->pcm_indirect,
      adc->pbus.pbus->pbdma_bptr);
}
