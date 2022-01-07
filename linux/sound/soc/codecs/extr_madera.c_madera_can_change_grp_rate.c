
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct madera_priv {int* domain_group_ref; TYPE_1__* madera; } ;
struct TYPE_2__ {int dev; } ;
 size_t MADERA_DOM_GRP_AIF1 ;
 size_t MADERA_DOM_GRP_AIF2 ;
 size_t MADERA_DOM_GRP_AIF3 ;
 size_t MADERA_DOM_GRP_AIF4 ;
 size_t MADERA_DOM_GRP_ASRC1 ;
 size_t MADERA_DOM_GRP_ASRC2 ;
 size_t MADERA_DOM_GRP_DSP1 ;
 size_t MADERA_DOM_GRP_DSP2 ;
 size_t MADERA_DOM_GRP_DSP3 ;
 size_t MADERA_DOM_GRP_DSP4 ;
 size_t MADERA_DOM_GRP_DSP5 ;
 size_t MADERA_DOM_GRP_DSP6 ;
 size_t MADERA_DOM_GRP_DSP7 ;
 size_t MADERA_DOM_GRP_FX ;
 size_t MADERA_DOM_GRP_ISRC1 ;
 size_t MADERA_DOM_GRP_ISRC2 ;
 size_t MADERA_DOM_GRP_ISRC3 ;
 size_t MADERA_DOM_GRP_ISRC4 ;
 size_t MADERA_DOM_GRP_OUT ;
 size_t MADERA_DOM_GRP_PWM ;
 size_t MADERA_DOM_GRP_SLIMBUS ;
 size_t MADERA_DOM_GRP_SPD ;
 int dev_dbg (int ,char*,unsigned int,int) ;

__attribute__((used)) static bool madera_can_change_grp_rate(const struct madera_priv *priv,
           unsigned int reg)
{
 int count;

 switch (reg) {
 case 147:
  count = priv->domain_group_ref[MADERA_DOM_GRP_FX];
  break;
 case 165:
 case 164:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ASRC1];
  break;
 case 163:
 case 162:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ASRC2];
  break;
 case 146:
 case 145:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ISRC1];
  break;
 case 144:
 case 143:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ISRC2];
  break;
 case 142:
 case 141:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ISRC3];
  break;
 case 140:
 case 139:
  count = priv->domain_group_ref[MADERA_DOM_GRP_ISRC4];
  break;
 case 138:
  count = priv->domain_group_ref[MADERA_DOM_GRP_OUT];
  break;
 case 128:
  count = priv->domain_group_ref[MADERA_DOM_GRP_SPD];
  break;
 case 161:
 case 160:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP1];
  break;
 case 159:
 case 158:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP2];
  break;
 case 157:
 case 156:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP3];
  break;
 case 155:
 case 154:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP4];
  break;
 case 153:
 case 152:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP5];
  break;
 case 151:
 case 150:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP6];
  break;
 case 149:
 case 148:
  count = priv->domain_group_ref[MADERA_DOM_GRP_DSP7];
  break;
 case 169:
  count = priv->domain_group_ref[MADERA_DOM_GRP_AIF1];
  break;
 case 168:
  count = priv->domain_group_ref[MADERA_DOM_GRP_AIF2];
  break;
 case 167:
  count = priv->domain_group_ref[MADERA_DOM_GRP_AIF3];
  break;
 case 166:
  count = priv->domain_group_ref[MADERA_DOM_GRP_AIF4];
  break;
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  count = priv->domain_group_ref[MADERA_DOM_GRP_SLIMBUS];
  break;
 case 137:
  count = priv->domain_group_ref[MADERA_DOM_GRP_PWM];
  break;
 default:
  return 0;
 }

 dev_dbg(priv->madera->dev, "Rate reg 0x%x group ref %d\n", reg, count);

 if (count)
  return 0;
 else
  return 1;
}
