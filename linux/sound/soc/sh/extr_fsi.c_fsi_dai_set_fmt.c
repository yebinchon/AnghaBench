
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct fsi_priv {int clk_master; int bit_clk_inv; int lr_clk_inv; scalar_t__ clk_cpg; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int fsi_clk_init (int ,struct fsi_priv*,int,int,int,int ) ;
 int fsi_clk_set_rate_cpg ;
 int fsi_clk_set_rate_external ;
 struct fsi_priv* fsi_get_priv_frm_dai (struct snd_soc_dai*) ;
 scalar_t__ fsi_is_clk_master (struct fsi_priv*) ;
 scalar_t__ fsi_is_spdif (struct fsi_priv*) ;
 int fsi_set_fmt_dai (struct fsi_priv*,unsigned int) ;
 int fsi_set_fmt_spdif (struct fsi_priv*) ;

__attribute__((used)) static int fsi_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct fsi_priv *fsi = fsi_get_priv_frm_dai(dai);
 int ret;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  break;
 case 132:
  fsi->clk_master = 1;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  fsi->bit_clk_inv = 0;
  fsi->lr_clk_inv = 1;
  break;
 case 130:
  fsi->bit_clk_inv = 1;
  fsi->lr_clk_inv = 0;
  break;
 case 131:
  fsi->bit_clk_inv = 1;
  fsi->lr_clk_inv = 1;
  break;
 case 128:
 default:
  fsi->bit_clk_inv = 0;
  fsi->lr_clk_inv = 0;
  break;
 }

 if (fsi_is_clk_master(fsi)) {
  if (fsi->clk_cpg)
   fsi_clk_init(dai->dev, fsi, 0, 1, 1,
         fsi_clk_set_rate_cpg);
  else
   fsi_clk_init(dai->dev, fsi, 1, 1, 0,
         fsi_clk_set_rate_external);
 }


 if (fsi_is_spdif(fsi))
  ret = fsi_set_fmt_spdif(fsi);
 else
  ret = fsi_set_fmt_dai(fsi, fmt & SND_SOC_DAIFMT_FORMAT_MASK);

 return ret;
}
