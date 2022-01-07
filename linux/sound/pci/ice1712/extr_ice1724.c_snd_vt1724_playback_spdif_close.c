
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_3__ {int (* close ) (struct snd_ice1712*,struct snd_pcm_substream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct snd_ice1712 {TYPE_2__ spdif; int * playback_con_substream; int pro_rate_default; } ;


 scalar_t__ PRO_RATE_RESET ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_set_pro_rate (struct snd_ice1712*,int ,int ) ;
 int stub1 (struct snd_ice1712*,struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_vt1724_playback_spdif_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 if (PRO_RATE_RESET)
  snd_vt1724_set_pro_rate(ice, ice->pro_rate_default, 0);
 ice->playback_con_substream = ((void*)0);
 if (ice->spdif.ops.close)
  ice->spdif.ops.close(ice, substream);

 return 0;
}
