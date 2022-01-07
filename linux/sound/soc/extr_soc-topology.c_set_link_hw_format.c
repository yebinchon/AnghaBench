
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_link_config {scalar_t__ default_hw_config_id; struct snd_soc_tplg_hw_config* hw_config; int num_hw_configs; } ;
struct snd_soc_tplg_hw_config {scalar_t__ id; int clock_gated; unsigned char invert_bclk; unsigned char invert_fsync; scalar_t__ bclk_master; scalar_t__ fsync_master; int fmt; } ;
struct snd_soc_dai_link {int dai_fmt; } ;


 int SND_SOC_DAIFMT_CBM_CFM ;
 int SND_SOC_DAIFMT_CBM_CFS ;
 int SND_SOC_DAIFMT_CBS_CFM ;
 int SND_SOC_DAIFMT_CBS_CFS ;
 int SND_SOC_DAIFMT_CONT ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;
 int SND_SOC_DAIFMT_GATED ;
 int SND_SOC_DAIFMT_IB_IF ;
 int SND_SOC_DAIFMT_IB_NF ;
 int SND_SOC_DAIFMT_NB_IF ;
 int SND_SOC_DAIFMT_NB_NF ;
 scalar_t__ SND_SOC_TPLG_BCLK_CM ;


 scalar_t__ SND_SOC_TPLG_FSYNC_CM ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void set_link_hw_format(struct snd_soc_dai_link *link,
   struct snd_soc_tplg_link_config *cfg)
{
 struct snd_soc_tplg_hw_config *hw_config;
 unsigned char bclk_master, fsync_master;
 unsigned char invert_bclk, invert_fsync;
 int i;

 for (i = 0; i < le32_to_cpu(cfg->num_hw_configs); i++) {
  hw_config = &cfg->hw_config[i];
  if (hw_config->id != cfg->default_hw_config_id)
   continue;

  link->dai_fmt = le32_to_cpu(hw_config->fmt) &
   SND_SOC_DAIFMT_FORMAT_MASK;


  switch (hw_config->clock_gated) {
  case 128:
   link->dai_fmt |= SND_SOC_DAIFMT_GATED;
   break;

  case 129:
   link->dai_fmt |= SND_SOC_DAIFMT_CONT;
   break;

  default:

   break;
  }


  invert_bclk = hw_config->invert_bclk;
  invert_fsync = hw_config->invert_fsync;
  if (!invert_bclk && !invert_fsync)
   link->dai_fmt |= SND_SOC_DAIFMT_NB_NF;
  else if (!invert_bclk && invert_fsync)
   link->dai_fmt |= SND_SOC_DAIFMT_NB_IF;
  else if (invert_bclk && !invert_fsync)
   link->dai_fmt |= SND_SOC_DAIFMT_IB_NF;
  else
   link->dai_fmt |= SND_SOC_DAIFMT_IB_IF;


  bclk_master = (hw_config->bclk_master ==
          SND_SOC_TPLG_BCLK_CM);
  fsync_master = (hw_config->fsync_master ==
    SND_SOC_TPLG_FSYNC_CM);
  if (bclk_master && fsync_master)
   link->dai_fmt |= SND_SOC_DAIFMT_CBM_CFM;
  else if (!bclk_master && fsync_master)
   link->dai_fmt |= SND_SOC_DAIFMT_CBS_CFM;
  else if (bclk_master && !fsync_master)
   link->dai_fmt |= SND_SOC_DAIFMT_CBM_CFS;
  else
   link->dai_fmt |= SND_SOC_DAIFMT_CBS_CFS;
 }
}
