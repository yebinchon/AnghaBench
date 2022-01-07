
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max9768 {int flags; int mute_gpio; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int MAX9768_CTRL ;
 int MAX9768_CTRL_PWM ;
 int MAX9768_FLAG_CLASSIC_PWM ;
 scalar_t__ gpio_is_valid (int ) ;
 int max9768_mute ;
 int regmap_write (int ,int ,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct max9768* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9768_probe(struct snd_soc_component *component)
{
 struct max9768 *max9768 = snd_soc_component_get_drvdata(component);
 int ret;

 if (max9768->flags & MAX9768_FLAG_CLASSIC_PWM) {
  ret = regmap_write(max9768->regmap, MAX9768_CTRL,
   MAX9768_CTRL_PWM);
  if (ret)
   return ret;
 }

 if (gpio_is_valid(max9768->mute_gpio)) {
  ret = snd_soc_add_component_controls(component, max9768_mute,
    ARRAY_SIZE(max9768_mute));
  if (ret)
   return ret;
 }

 return 0;
}
