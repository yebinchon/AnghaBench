
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int ALI_MODEM_OUT_CHANNEL ;
 int snd_ali_modem_open (struct snd_pcm_substream*,int ,int ) ;

__attribute__((used)) static int snd_ali_modem_playback_open(struct snd_pcm_substream *substream)
{
 return snd_ali_modem_open(substream, 0, ALI_MODEM_OUT_CHANNEL);
}
