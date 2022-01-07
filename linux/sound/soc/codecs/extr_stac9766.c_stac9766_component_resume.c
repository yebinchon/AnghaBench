
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_ac97 {int dummy; } ;


 int STAC9766_VENDOR_ID ;
 int STAC9766_VENDOR_ID_MASK ;
 int snd_ac97_reset (struct snd_ac97*,int,int ,int ) ;
 struct snd_ac97* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int stac9766_component_resume(struct snd_soc_component *component)
{
 struct snd_ac97 *ac97 = snd_soc_component_get_drvdata(component);

 return snd_ac97_reset(ac97, 1, STAC9766_VENDOR_ID,
  STAC9766_VENDOR_ID_MASK);
}
