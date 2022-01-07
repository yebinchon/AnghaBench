
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; } ;
struct mt2701_i2s_path {scalar_t__* on; struct mt2701_i2s_data** i2s_data; } ;
struct mt2701_i2s_data {int i2s_ctrl_reg; } ;


 int ASYS_I2S_CON_I2S_EN ;
 int mt2701_afe_disable_i2s (struct mtk_base_afe*,struct mt2701_i2s_path*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int mt2701_afe_i2s_path_disable(struct mtk_base_afe *afe,
           struct mt2701_i2s_path *i2s_path,
           int stream_dir)
{
 const struct mt2701_i2s_data *i2s_data = i2s_path->i2s_data[stream_dir];

 if (--i2s_path->on[stream_dir] < 0)
  i2s_path->on[stream_dir] = 0;

 if (i2s_path->on[stream_dir])
  return 0;


 regmap_update_bits(afe->regmap, i2s_data->i2s_ctrl_reg,
      ASYS_I2S_CON_I2S_EN, 0);

 mt2701_afe_disable_i2s(afe, i2s_path, stream_dir);

 return 0;
}
