
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_stream {int * substream; } ;


 int UAC3_PD_STATE_D2 ;
 int snd_usb_pcm_change_state (int *,int ) ;

int snd_usb_pcm_suspend(struct snd_usb_stream *as)
{
 int ret;

 ret = snd_usb_pcm_change_state(&as->substream[0], UAC3_PD_STATE_D2);
 if (ret < 0)
  return ret;

 ret = snd_usb_pcm_change_state(&as->substream[1], UAC3_PD_STATE_D2);
 if (ret < 0)
  return ret;

 return 0;
}
