
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; int runtime; } ;
struct davinci_mcasp_ruledata {int serializers; struct davinci_mcasp* mcasp; } ;
struct davinci_mcasp {int tdm_slots; scalar_t__ op_mode; int num_serializer; int* serial_dir; int channels; scalar_t__ bclk_div; scalar_t__ sysclk_freq; scalar_t__ bclk_master; scalar_t__ slot_width; scalar_t__ max_format_width; int * chconstr; scalar_t__* tdm_mask; struct snd_pcm_substream** substreams; struct davinci_mcasp_ruledata* ruledata; } ;


 scalar_t__ DAVINCI_MCASP_DIT_MODE ;
 int EBUSY ;
 int RX_MODE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int TX_MODE ;
 int davinci_mcasp_hw_rule_format ;
 int davinci_mcasp_hw_rule_format_width ;
 int davinci_mcasp_hw_rule_min_periodsize ;
 int davinci_mcasp_hw_rule_rate ;
 int davinci_mcasp_hw_rule_slot_width ;
 int hweight32 (scalar_t__) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int ,int) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,struct davinci_mcasp_ruledata*,int ,int) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_mcasp_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(cpu_dai);
 struct davinci_mcasp_ruledata *ruledata =
     &mcasp->ruledata[substream->stream];
 u32 max_channels = 0;
 int i, dir, ret;
 int tdm_slots = mcasp->tdm_slots;


 if (mcasp->substreams[substream->stream])
  return -EBUSY;

 mcasp->substreams[substream->stream] = substream;

 if (mcasp->tdm_mask[substream->stream])
  tdm_slots = hweight32(mcasp->tdm_mask[substream->stream]);

 if (mcasp->op_mode == DAVINCI_MCASP_DIT_MODE)
  return 0;





 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir = TX_MODE;
 else
  dir = RX_MODE;

 for (i = 0; i < mcasp->num_serializer; i++) {
  if (mcasp->serial_dir[i] == dir)
   max_channels++;
 }
 ruledata->serializers = max_channels;
 ruledata->mcasp = mcasp;
 max_channels *= tdm_slots;







 if (mcasp->channels && mcasp->channels < max_channels &&
     ruledata->serializers == 1)
  max_channels = mcasp->channels;




 if (max_channels < tdm_slots)
  max_channels = tdm_slots;

 snd_pcm_hw_constraint_minmax(substream->runtime,
         SNDRV_PCM_HW_PARAM_CHANNELS,
         0, max_channels);

 snd_pcm_hw_constraint_list(substream->runtime,
       0, SNDRV_PCM_HW_PARAM_CHANNELS,
       &mcasp->chconstr[substream->stream]);

 if (mcasp->max_format_width) {




  ret = snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_FORMAT,
       davinci_mcasp_hw_rule_format_width,
       ruledata,
       SNDRV_PCM_HW_PARAM_FORMAT, -1);
  if (ret)
   return ret;
 }
 else if (mcasp->slot_width) {

  ret = snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_FORMAT,
       davinci_mcasp_hw_rule_slot_width,
       ruledata,
       SNDRV_PCM_HW_PARAM_FORMAT, -1);
  if (ret)
   return ret;
 }





 if (mcasp->bclk_master && mcasp->bclk_div == 0 && mcasp->sysclk_freq) {
  ret = snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       davinci_mcasp_hw_rule_rate,
       ruledata,
       SNDRV_PCM_HW_PARAM_FORMAT, -1);
  if (ret)
   return ret;
  ret = snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_FORMAT,
       davinci_mcasp_hw_rule_format,
       ruledata,
       SNDRV_PCM_HW_PARAM_RATE, -1);
  if (ret)
   return ret;
 }

 snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
       davinci_mcasp_hw_rule_min_periodsize, ((void*)0),
       SNDRV_PCM_HW_PARAM_PERIOD_SIZE, -1);

 return 0;
}
