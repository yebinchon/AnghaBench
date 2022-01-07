
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int regmap; } ;
struct snd_pcm_substream {int dummy; } ;


 int SUN4I_SPDIF_CTL ;
 int SUN4I_SPDIF_CTL_GEN ;
 int SUN4I_SPDIF_INT ;
 int SUN4I_SPDIF_INT_TXDRQEN ;
 int SUN4I_SPDIF_TXCFG ;
 int SUN4I_SPDIF_TXCFG_TXEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_snd_txctrl_off(struct snd_pcm_substream *substream,
     struct sun4i_spdif_dev *host)
{

 regmap_update_bits(host->regmap, SUN4I_SPDIF_TXCFG,
      SUN4I_SPDIF_TXCFG_TXEN, 0);


 regmap_update_bits(host->regmap, SUN4I_SPDIF_INT,
      SUN4I_SPDIF_INT_TXDRQEN, 0);


 regmap_update_bits(host->regmap, SUN4I_SPDIF_CTL,
      SUN4I_SPDIF_CTL_GEN, 0);
}
