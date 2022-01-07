
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** inmode; unsigned int* dmic_ref; } ;
struct TYPE_4__ {TYPE_1__ codec; } ;
struct madera {int type; int regmap; int dev; TYPE_2__ pdata; } ;







 scalar_t__ MADERA_ADC_DIGITAL_VOLUME_1L ;
 scalar_t__ MADERA_ADC_DIGITAL_VOLUME_1R ;
 scalar_t__ MADERA_IN1L_CONTROL ;
 int MADERA_IN1L_SRC_SE_MASK ;
 int MADERA_IN1L_SRC_SE_SHIFT ;
 int MADERA_IN1R_SRC_SE_MASK ;
 int MADERA_IN1R_SRC_SE_SHIFT ;
 int MADERA_IN1_DMIC_SUP_MASK ;
 unsigned int MADERA_IN1_DMIC_SUP_SHIFT ;



 int dev_dbg (int ,char*,int,unsigned int,unsigned int,unsigned int,...) ;
 int dev_warn (int ,char*,int,int) ;
 int regmap_update_bits (int ,scalar_t__,int ,unsigned int) ;

__attribute__((used)) static void madera_configure_input_mode(struct madera *madera)
{
 unsigned int dig_mode, ana_mode_l, ana_mode_r;
 int max_analogue_inputs, max_dmic_sup, i;

 switch (madera->type) {
 case 135:
  max_analogue_inputs = 1;
  max_dmic_sup = 2;
  break;
 case 134:
  max_analogue_inputs = 2;
  max_dmic_sup = 2;
  break;
 case 133:
 case 128:
  max_analogue_inputs = 3;
  max_dmic_sup = 3;
  break;
 case 132:
 case 131:
  max_analogue_inputs = 2;
  max_dmic_sup = 2;
  break;
 default:
  max_analogue_inputs = 2;
  max_dmic_sup = 4;
  break;
 }





 for (i = 0; i < max_dmic_sup; i++) {
  dev_dbg(madera->dev, "IN%d mode %u:%u:%u:%u\n", i + 1,
   madera->pdata.codec.inmode[i][0],
   madera->pdata.codec.inmode[i][1],
   madera->pdata.codec.inmode[i][2],
   madera->pdata.codec.inmode[i][3]);

  dig_mode = madera->pdata.codec.dmic_ref[i] <<
      MADERA_IN1_DMIC_SUP_SHIFT;

  switch (madera->pdata.codec.inmode[i][0]) {
  case 130:
   ana_mode_l = 0;
   break;
  case 129:
   ana_mode_l = 1 << MADERA_IN1L_SRC_SE_SHIFT;
   break;
  default:
   dev_warn(madera->dev,
     "IN%dAL Illegal inmode %u ignored\n",
     i + 1, madera->pdata.codec.inmode[i][0]);
   continue;
  }

  switch (madera->pdata.codec.inmode[i][1]) {
  case 130:
   ana_mode_r = 0;
   break;
  case 129:
   ana_mode_r = 1 << MADERA_IN1R_SRC_SE_SHIFT;
   break;
  default:
   dev_warn(madera->dev,
     "IN%dAR Illegal inmode %u ignored\n",
     i + 1, madera->pdata.codec.inmode[i][1]);
   continue;
  }

  dev_dbg(madera->dev,
   "IN%dA DMIC mode=0x%x Analogue mode=0x%x,0x%x\n",
   i + 1, dig_mode, ana_mode_l, ana_mode_r);

  regmap_update_bits(madera->regmap,
       MADERA_IN1L_CONTROL + (i * 8),
       MADERA_IN1_DMIC_SUP_MASK, dig_mode);

  if (i >= max_analogue_inputs)
   continue;

  regmap_update_bits(madera->regmap,
       MADERA_ADC_DIGITAL_VOLUME_1L + (i * 8),
       MADERA_IN1L_SRC_SE_MASK, ana_mode_l);

  regmap_update_bits(madera->regmap,
       MADERA_ADC_DIGITAL_VOLUME_1R + (i * 8),
       MADERA_IN1R_SRC_SE_MASK, ana_mode_r);
 }
}
