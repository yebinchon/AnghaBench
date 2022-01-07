
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct reg_sequence {int member_0; int member_1; int def; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int regmap; int dac_comp_lock; int dac_comp_enabled; int dac_comp_coeff; } ;


 int ARIZONA_DAC_COMP_1 ;
 int ARIZONA_DAC_COMP_2 ;
 int ARRAY_SIZE (struct reg_sequence*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_multi_reg_write (int ,struct reg_sequence*,int ) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void arizona_wm5102_set_dac_comp(struct snd_soc_component *component,
     unsigned int rate)
{
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 struct reg_sequence dac_comp[] = {
  { 0x80, 0x3 },
  { ARIZONA_DAC_COMP_1, 0 },
  { ARIZONA_DAC_COMP_2, 0 },
  { 0x80, 0x0 },
 };

 mutex_lock(&arizona->dac_comp_lock);

 dac_comp[1].def = arizona->dac_comp_coeff;
 if (rate >= 176400)
  dac_comp[2].def = arizona->dac_comp_enabled;

 mutex_unlock(&arizona->dac_comp_lock);

 regmap_multi_reg_write(arizona->regmap,
          dac_comp,
          ARRAY_SIZE(dac_comp));
}
