
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {int* coef_shadow; int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int STA32X_B1CF1 ;
 int STA32X_B1CF2 ;
 int STA32X_B1CF3 ;
 int STA32X_CFADDR2 ;
 int STA32X_CFUD ;
 int STA32X_COEF_COUNT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int sta32x_sync_coef_shadow(struct snd_soc_component *component)
{
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);
 unsigned int cfud;
 int i;


 regmap_read(sta32x->regmap, STA32X_CFUD, &cfud);
 cfud &= 0xf0;

 for (i = 0; i < STA32X_COEF_COUNT; i++) {
  regmap_write(sta32x->regmap, STA32X_CFADDR2, i);
  regmap_write(sta32x->regmap, STA32X_B1CF1,
        (sta32x->coef_shadow[i] >> 16) & 0xff);
  regmap_write(sta32x->regmap, STA32X_B1CF2,
        (sta32x->coef_shadow[i] >> 8) & 0xff);
  regmap_write(sta32x->regmap, STA32X_B1CF3,
        (sta32x->coef_shadow[i]) & 0xff);




  regmap_write(sta32x->regmap, STA32X_CFUD, cfud);
  regmap_write(sta32x->regmap, STA32X_CFUD, cfud | 0x01);
 }
 return 0;
}
