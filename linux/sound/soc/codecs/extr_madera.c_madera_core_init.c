
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct madera_priv {TYPE_1__* madera; int rate_lock; } ;
struct TYPE_2__ {int* out_clamp; int dev; } ;


 int BUILD_BUG_ON (int) ;
 int MADERA_MAX_HP_OUTPUT ;
 int MADERA_NUM_MIXER_INPUTS ;
 int dev_get_platdata (int ) ;
 int * madera_mixer_texts ;
 int * madera_mixer_values ;
 int madera_prop_get_pdata (struct madera_priv*) ;
 int mutex_init (int *) ;

int madera_core_init(struct madera_priv *priv)
{
 int i;


 BUILD_BUG_ON(!madera_mixer_texts[MADERA_NUM_MIXER_INPUTS - 1]);
 BUILD_BUG_ON(!madera_mixer_values[MADERA_NUM_MIXER_INPUTS - 1]);

 if (!dev_get_platdata(priv->madera->dev))
  madera_prop_get_pdata(priv);

 mutex_init(&priv->rate_lock);

 for (i = 0; i < MADERA_MAX_HP_OUTPUT; i++)
  priv->madera->out_clamp[i] = 1;

 return 0;
}
