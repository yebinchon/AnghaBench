
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct rsnd_dai {int clk_master; int bit_clk_inv; int sys_delay; int data_alignment; int frm_clk_inv; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 struct rsnd_dai* rsnd_dai_to_rdai (struct snd_soc_dai*) ;

__attribute__((used)) static int rsnd_soc_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct rsnd_dai *rdai = rsnd_dai_to_rdai(dai);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  rdai->clk_master = 0;
  break;
 case 137:
  rdai->clk_master = 1;
  break;
 default:
  return -EINVAL;
 }


 rdai->bit_clk_inv = 0;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  rdai->sys_delay = 0;
  rdai->data_alignment = 0;
  rdai->frm_clk_inv = 0;
  break;
 case 131:
 case 135:
  rdai->sys_delay = 1;
  rdai->data_alignment = 0;
  rdai->frm_clk_inv = 1;
  break;
 case 128:
  rdai->sys_delay = 1;
  rdai->data_alignment = 1;
  rdai->frm_clk_inv = 1;
  break;
 case 136:
  rdai->sys_delay = 0;
  rdai->data_alignment = 0;
  rdai->frm_clk_inv = 1;
  break;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 130:
  rdai->frm_clk_inv = !rdai->frm_clk_inv;
  break;
 case 132:
  rdai->bit_clk_inv = !rdai->bit_clk_inv;
  break;
 case 133:
  rdai->bit_clk_inv = !rdai->bit_clk_inv;
  rdai->frm_clk_inv = !rdai->frm_clk_inv;
  break;
 case 129:
 default:
  break;
 }

 return 0;
}
