
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda1334_priv {int mute; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct uda1334_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void uda1334_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct uda1334_priv *uda1334 = snd_soc_component_get_drvdata(component);

 gpiod_set_value_cansleep(uda1334->mute, 0);
}
