
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_sof_dev {int dev; } ;
struct TYPE_8__ {int frame_fmt; } ;
struct TYPE_9__ {TYPE_3__ config; } ;
struct snd_sof_dai {TYPE_5__* dai_config; TYPE_4__ comp_dai; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int min; int max; } ;
struct TYPE_7__ {int fsync_rate; int tdm_slots; } ;
struct TYPE_10__ {int type; TYPE_2__ ssp; } ;
struct TYPE_6__ {scalar_t__ name; } ;


 int DRV_NAME ;
 int EINVAL ;
 int SNDRV_PCM_FORMAT_S16_LE ;
 int SNDRV_PCM_FORMAT_S24_LE ;
 int SNDRV_PCM_FORMAT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;







 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,scalar_t__) ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_none (struct snd_mask*) ;
 int snd_mask_set_format (struct snd_mask*,int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_dai* snd_sof_find_dai (struct snd_sof_dev*,char*) ;

__attribute__((used)) static int sof_pcm_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
      struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
   SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
      SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_mask *fmt = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_dai *dai =
  snd_sof_find_dai(sdev, (char *)rtd->dai_link->name);


 if (!dai) {
  dev_warn(sdev->dev, "warning: no topology found for BE DAI %s config\n",
    rtd->dai_link->name);


  rate->min = 48000;
  rate->max = 48000;

  channels->min = 2;
  channels->max = 2;

  snd_mask_none(fmt);
  snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S16_LE);

  return 0;
 }


 snd_mask_none(fmt);

 switch (dai->comp_dai.config.frame_fmt) {
 case 130:
  snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S16_LE);
  break;
 case 129:
  snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S24_LE);
  break;
 case 128:
  snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S32_LE);
  break;
 default:
  dev_err(sdev->dev, "error: No available DAI format!\n");
  return -EINVAL;
 }


 switch (dai->dai_config->type) {
 case 131:
  rate->min = dai->dai_config->ssp.fsync_rate;
  rate->max = dai->dai_config->ssp.fsync_rate;
  channels->min = dai->dai_config->ssp.tdm_slots;
  channels->max = dai->dai_config->ssp.tdm_slots;

  dev_dbg(sdev->dev,
   "rate_min: %d rate_max: %d\n", rate->min, rate->max);
  dev_dbg(sdev->dev,
   "channels_min: %d channels_max: %d\n",
   channels->min, channels->max);

  break;
 case 133:

  if (dai->comp_dai.config.frame_fmt == 129) {
   dev_err(sdev->dev,
    "error: invalid fmt %d for DAI type %d\n",
    dai->comp_dai.config.frame_fmt,
    dai->dai_config->type);
  }
  break;
 case 132:

  break;
 case 134:

  break;
 default:
  dev_err(sdev->dev, "error: invalid DAI type %d\n",
   dai->dai_config->type);
  break;
 }

 return 0;
}
