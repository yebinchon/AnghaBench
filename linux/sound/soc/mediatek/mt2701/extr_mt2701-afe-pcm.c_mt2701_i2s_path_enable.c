
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_base_afe {int regmap; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {int* on; struct mt2701_i2s_data** i2s_data; } ;
struct mt2701_i2s_data {int i2s_ctrl_reg; int i2s_asrc_fs_mask; int i2s_asrc_fs_shift; } ;
struct mt2701_afe_private {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ has_one_heart_mode; } ;


 int ASMI_TIMING_CON1 ;
 int ASMO_TIMING_CON1 ;
 unsigned int ASYS_I2S_CON_FS ;
 unsigned int ASYS_I2S_CON_FS_SET (int) ;
 unsigned int ASYS_I2S_CON_I2S_COUPLE_MODE ;
 int ASYS_I2S_CON_I2S_EN ;
 unsigned int ASYS_I2S_CON_I2S_MODE ;
 unsigned int ASYS_I2S_CON_ONE_HEART_MODE ;
 int ASYS_I2S_CON_RESET ;
 unsigned int ASYS_I2S_CON_WIDE_MODE ;
 unsigned int ASYS_I2S_CON_WIDE_MODE_SET (int) ;
 unsigned int ASYS_I2S_IN_PHASE_FIX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int mt2701_afe_enable_i2s (struct mtk_base_afe*,struct mt2701_i2s_path*,int) ;
 int mt2701_afe_i2s_fs (int) ;
 int regmap_update_bits (int ,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int mt2701_i2s_path_enable(struct mtk_base_afe *afe,
      struct mt2701_i2s_path *i2s_path,
      int stream_dir, int rate)
{
 const struct mt2701_i2s_data *i2s_data = i2s_path->i2s_data[stream_dir];
 struct mt2701_afe_private *afe_priv = afe->platform_priv;
 int reg, fs, w_len = 1;
 unsigned int mask, val;


 if (++i2s_path->on[stream_dir] != 1)
  return 0;

 fs = mt2701_afe_i2s_fs(rate);

 mask = ASYS_I2S_CON_FS |
        ASYS_I2S_CON_I2S_COUPLE_MODE |
        ASYS_I2S_CON_I2S_MODE |
        ASYS_I2S_CON_WIDE_MODE;

 val = ASYS_I2S_CON_FS_SET(fs) |
       ASYS_I2S_CON_I2S_MODE |
       ASYS_I2S_CON_WIDE_MODE_SET(w_len);

 if (stream_dir == SNDRV_PCM_STREAM_CAPTURE) {
  mask |= ASYS_I2S_IN_PHASE_FIX;
  val |= ASYS_I2S_IN_PHASE_FIX;
  reg = ASMI_TIMING_CON1;
 } else {
  if (afe_priv->soc->has_one_heart_mode) {
   mask |= ASYS_I2S_CON_ONE_HEART_MODE;
   val |= ASYS_I2S_CON_ONE_HEART_MODE;
  }
  reg = ASMO_TIMING_CON1;
 }

 regmap_update_bits(afe->regmap, i2s_data->i2s_ctrl_reg, mask, val);

 regmap_update_bits(afe->regmap, reg,
      i2s_data->i2s_asrc_fs_mask
      << i2s_data->i2s_asrc_fs_shift,
      fs << i2s_data->i2s_asrc_fs_shift);


 mt2701_afe_enable_i2s(afe, i2s_path, stream_dir);


 regmap_update_bits(afe->regmap, i2s_data->i2s_ctrl_reg,
      ASYS_I2S_CON_RESET, ASYS_I2S_CON_RESET);
 udelay(1);
 regmap_update_bits(afe->regmap, i2s_data->i2s_ctrl_reg,
      ASYS_I2S_CON_RESET, 0);
 udelay(1);
 regmap_update_bits(afe->regmap, i2s_data->i2s_ctrl_reg,
      ASYS_I2S_CON_I2S_EN, ASYS_I2S_CON_I2S_EN);
 return 0;
}
