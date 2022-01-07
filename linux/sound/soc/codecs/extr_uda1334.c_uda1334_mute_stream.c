
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda1334_priv {scalar_t__ mute; } ;
struct snd_soc_dai {int component; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct uda1334_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int uda1334_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
{
 struct uda1334_priv *uda1334 = snd_soc_component_get_drvdata(dai->component);

 if (uda1334->mute)
  gpiod_set_value_cansleep(uda1334->mute, mute);

 return 0;
}
