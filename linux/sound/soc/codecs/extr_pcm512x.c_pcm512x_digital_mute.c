
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct pcm512x_priv {int mute; int mutex; int regmap; } ;


 int PCM512x_ANALOG_MUTE_DET ;
 int PCM512x_MUTE ;
 int PCM512x_RQML ;
 int PCM512x_RQMR ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcm512x_update_mute (struct pcm512x_priv*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm512x_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 int ret;
 unsigned int mute_det;

 mutex_lock(&pcm512x->mutex);

 if (mute) {
  pcm512x->mute |= 0x1;
  ret = regmap_update_bits(pcm512x->regmap, PCM512x_MUTE,
      PCM512x_RQML | PCM512x_RQMR,
      PCM512x_RQML | PCM512x_RQMR);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to set digital mute: %d\n", ret);
   goto unlock;
  }

  regmap_read_poll_timeout(pcm512x->regmap,
      PCM512x_ANALOG_MUTE_DET,
      mute_det, (mute_det & 0x3) == 0,
      200, 10000);
 } else {
  pcm512x->mute &= ~0x1;
  ret = pcm512x_update_mute(pcm512x);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to update digital mute: %d\n", ret);
   goto unlock;
  }

  regmap_read_poll_timeout(pcm512x->regmap,
      PCM512x_ANALOG_MUTE_DET,
      mute_det,
      (mute_det & 0x3)
      == ((~pcm512x->mute >> 1) & 0x3),
      200, 10000);
 }

unlock:
 mutex_unlock(&pcm512x->mutex);

 return ret;
}
