
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hal2_codec {int pcm_indirect; } ;
struct snd_hal2 {struct hal2_codec adc; } ;


 int hal2_capture_transfer ;
 int snd_pcm_indirect_capture_transfer (struct snd_pcm_substream*,int *,int ) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_capture_ack(struct snd_pcm_substream *substream)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 struct hal2_codec *adc = &hal2->adc;

 return snd_pcm_indirect_capture_transfer(substream,
       &adc->pcm_indirect,
       hal2_capture_transfer);
}
