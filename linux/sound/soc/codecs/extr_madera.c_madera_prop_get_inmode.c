
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct madera_priv {struct madera* madera; } ;
struct madera_codec_pdata {int ** inmode; } ;
struct TYPE_2__ {struct madera_codec_pdata codec; } ;
struct madera {int dev; TYPE_1__ pdata; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int MADERA_MAX_INPUT ;
 int MADERA_MAX_MUXED_CHANNELS ;
 int madera_get_variable_u32_array (int ,char*,int *,int,int) ;

__attribute__((used)) static void madera_prop_get_inmode(struct madera_priv *priv)
{
 struct madera *madera = priv->madera;
 struct madera_codec_pdata *pdata = &madera->pdata.codec;
 u32 tmp[MADERA_MAX_INPUT * MADERA_MAX_MUXED_CHANNELS];
 int n, i, in_idx, ch_idx;

 BUILD_BUG_ON(ARRAY_SIZE(pdata->inmode) != MADERA_MAX_INPUT);
 BUILD_BUG_ON(ARRAY_SIZE(pdata->inmode[0]) != MADERA_MAX_MUXED_CHANNELS);

 n = madera_get_variable_u32_array(madera->dev, "cirrus,inmode",
       tmp, ARRAY_SIZE(tmp),
       MADERA_MAX_MUXED_CHANNELS);
 if (n < 0)
  return;

 in_idx = 0;
 ch_idx = 0;
 for (i = 0; i < n; ++i) {
  pdata->inmode[in_idx][ch_idx] = tmp[i];

  if (++ch_idx == MADERA_MAX_MUXED_CHANNELS) {
   ch_idx = 0;
   ++in_idx;
  }
 }
}
