
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {struct regmap* regmap; } ;


 int INT_VAL_NOGOOD ;
 int REG_SPDIF_SIC ;
 int REG_SPDIF_SIS ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_spdif_vbit_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct fsl_spdif_priv *spdif_priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct regmap *regmap = spdif_priv->regmap;
 u32 val;

 regmap_read(regmap, REG_SPDIF_SIS, &val);
 ucontrol->value.integer.value[0] = (val & INT_VAL_NOGOOD) != 0;
 regmap_write(regmap, REG_SPDIF_SIC, INT_VAL_NOGOOD);

 return 0;
}
