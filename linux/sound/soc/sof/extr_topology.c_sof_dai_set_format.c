
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_dai_config {int format; } ;
struct snd_soc_tplg_hw_config {scalar_t__ bclk_master; scalar_t__ fsync_master; scalar_t__ invert_fsync; scalar_t__ invert_bclk; } ;


 scalar_t__ SND_SOC_TPLG_BCLK_CM ;
 scalar_t__ SND_SOC_TPLG_FSYNC_CM ;
 int SOF_DAI_FMT_CBM_CFM ;
 int SOF_DAI_FMT_CBM_CFS ;
 int SOF_DAI_FMT_CBS_CFM ;
 int SOF_DAI_FMT_CBS_CFS ;
 int SOF_DAI_FMT_IB_IF ;
 int SOF_DAI_FMT_IB_NF ;
 int SOF_DAI_FMT_NB_IF ;
 int SOF_DAI_FMT_NB_NF ;

__attribute__((used)) static void sof_dai_set_format(struct snd_soc_tplg_hw_config *hw_config,
          struct sof_ipc_dai_config *config)
{

 if (hw_config->bclk_master == SND_SOC_TPLG_BCLK_CM) {

  if (hw_config->fsync_master == SND_SOC_TPLG_FSYNC_CM)
   config->format |= SOF_DAI_FMT_CBM_CFM;
  else
   config->format |= SOF_DAI_FMT_CBM_CFS;
 } else {

  if (hw_config->fsync_master == SND_SOC_TPLG_FSYNC_CM)
   config->format |= SOF_DAI_FMT_CBS_CFM;
  else
   config->format |= SOF_DAI_FMT_CBS_CFS;
 }


 if (hw_config->invert_bclk) {
  if (hw_config->invert_fsync)
   config->format |= SOF_DAI_FMT_IB_IF;
  else
   config->format |= SOF_DAI_FMT_IB_NF;
 } else {
  if (hw_config->invert_fsync)
   config->format |= SOF_DAI_FMT_NB_IF;
  else
   config->format |= SOF_DAI_FMT_NB_NF;
 }
}
