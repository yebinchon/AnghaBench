
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct alc5623_priv {int sysclk; } ;
struct TYPE_3__ {int fs; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* coeff_div ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int get_coeff(struct snd_soc_component *component, int rate)
{
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);
 int i;

 for (i = 0; i < ARRAY_SIZE(coeff_div); i++) {
  if (coeff_div[i].fs * rate == alc5623->sysclk)
   return i;
 }
 return -EINVAL;
}
