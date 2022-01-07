
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct onyx {int analog_locked; int spdif_locked; int mutex; } ;
struct codec_info_item {struct onyx* codec_data; } ;
struct bus_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ format; int rate; } ;


 int EBUSY ;
 int ONYX_MUTE_LEFT ;
 int ONYX_MUTE_RIGHT ;
 int ONYX_REG_DAC_CONTROL ;
 int ONYX_REG_DIG_INFO4 ;
 int ONYX_SPDIF_ENABLE ;
 scalar_t__ SNDRV_PCM_FMTBIT_COMPRESSED_16BE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;
 scalar_t__ onyx_write_register (struct onyx*,int ,int) ;

__attribute__((used)) static int onyx_prepare(struct codec_info_item *cii,
   struct bus_info *bi,
   struct snd_pcm_substream *substream)
{
 u8 v;
 struct onyx *onyx = cii->codec_data;
 int err = -EBUSY;

 mutex_lock(&onyx->mutex);
 switch (substream->runtime->rate) {
 case 32000:
 case 44100:
 case 48000:



  err = 0;
  goto out_unlock;
 default:


  onyx_read_register(cii->codec_data, ONYX_REG_DIG_INFO4, &v);
  if (onyx_write_register(onyx,
     ONYX_REG_DIG_INFO4,
     v & ~ONYX_SPDIF_ENABLE))
   goto out_unlock;
  onyx->spdif_locked = 1;
  err = 0;
  goto out_unlock;
 }

 out_unlock:
 mutex_unlock(&onyx->mutex);

 return err;
}
