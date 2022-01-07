
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;






 int DAC_GAIN_0DB ;
 int DAC_GAIN_M0P2DB ;
 int WCD9XXX_A_ANA_HPH ;
 int WCD9XXX_A_ANA_HPH_PWR_LEVEL_LP ;
 int WCD9XXX_A_ANA_HPH_PWR_LEVEL_MASK ;
 int WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL ;
 int WCD9XXX_A_ANA_HPH_PWR_LEVEL_UHQA ;
 int WCD9XXX_CLASSH_CTRL_CCL_1 ;
 int WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_30MA ;
 int WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA ;
 int WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_MASK ;
 int WCD9XXX_CLASSH_CTRL_VCL_2 ;
 int WCD9XXX_CLASSH_CTRL_VCL_2_VREF_FILT_1_MASK ;
 int WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_0KOHM ;
 int WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_50KOHM ;
 int WCD9XXX_HPH_REFBUFF_UHQA_CTL ;
 int WCD9XXX_HPH_REFBUFF_UHQA_GAIN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static void wcd_clsh_set_hph_mode(struct snd_soc_component *comp,
      int mode)
{
 int val = 0, gain = 0, res_val;
 int ipeak = WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA;

 res_val = WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_0KOHM;
 switch (mode) {
 case 128:
  res_val = WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_50KOHM;
  val = WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL;
  gain = DAC_GAIN_0DB;
  ipeak = WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA;
  break;
 case 131:
  val = WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL;
  gain = DAC_GAIN_0DB;
  ipeak = WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA;
  break;
 case 130:
  val = WCD9XXX_A_ANA_HPH_PWR_LEVEL_UHQA;
  gain = DAC_GAIN_M0P2DB;
  ipeak = WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA;
  break;
 case 129:
  val = WCD9XXX_A_ANA_HPH_PWR_LEVEL_LP;
  ipeak = WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_30MA;
  break;
 }

 snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_HPH,
     WCD9XXX_A_ANA_HPH_PWR_LEVEL_MASK, val);
 snd_soc_component_update_bits(comp, WCD9XXX_CLASSH_CTRL_VCL_2,
    WCD9XXX_CLASSH_CTRL_VCL_2_VREF_FILT_1_MASK,
    res_val);
 if (mode != 129)
  snd_soc_component_update_bits(comp,
     WCD9XXX_HPH_REFBUFF_UHQA_CTL,
     WCD9XXX_HPH_REFBUFF_UHQA_GAIN_MASK,
     gain);
 snd_soc_component_update_bits(comp, WCD9XXX_CLASSH_CTRL_CCL_1,
    WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_MASK,
    ipeak);
}
