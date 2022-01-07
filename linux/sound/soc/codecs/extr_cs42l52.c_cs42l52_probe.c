
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int format; } ;
struct cs42l52_private {TYPE_1__ config; int sysclk; int regmap; } ;


 int CS42L52_DEFAULT_CLK ;
 int CS42L52_DEFAULT_FORMAT ;
 int cs42l52_add_mic_controls (struct snd_soc_component*) ;
 int cs42l52_init_beep (struct snd_soc_component*) ;
 int regcache_cache_only (int ,int) ;
 struct cs42l52_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42l52_probe(struct snd_soc_component *component)
{
 struct cs42l52_private *cs42l52 = snd_soc_component_get_drvdata(component);

 regcache_cache_only(cs42l52->regmap, 1);

 cs42l52_add_mic_controls(component);

 cs42l52_init_beep(component);

 cs42l52->sysclk = CS42L52_DEFAULT_CLK;
 cs42l52->config.format = CS42L52_DEFAULT_FORMAT;

 return 0;
}
