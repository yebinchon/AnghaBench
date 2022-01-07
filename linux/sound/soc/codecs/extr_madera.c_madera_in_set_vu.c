
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct madera_priv {int num_inputs; TYPE_1__* madera; } ;
struct TYPE_2__ {int dev; int regmap; } ;


 scalar_t__ MADERA_ADC_DIGITAL_VOLUME_1L ;
 unsigned int MADERA_IN_VU ;
 int dev_warn (int ,char*,int) ;
 int regmap_update_bits (int ,scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static void madera_in_set_vu(struct madera_priv *priv, bool enable)
{
 unsigned int val;
 int i, ret;

 if (enable)
  val = MADERA_IN_VU;
 else
  val = 0;

 for (i = 0; i < priv->num_inputs; i++) {
  ret = regmap_update_bits(priv->madera->regmap,
      MADERA_ADC_DIGITAL_VOLUME_1L + (i * 4),
      MADERA_IN_VU, val);
  if (ret)
   dev_warn(priv->madera->dev,
     "Failed to modify VU bits: %d\n", ret);
 }
}
