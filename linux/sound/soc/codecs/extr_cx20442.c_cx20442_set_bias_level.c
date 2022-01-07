
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cx20442_priv {int por; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;


 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int const snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct cx20442_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cx20442_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 struct cx20442_priv *cx20442 = snd_soc_component_get_drvdata(component);
 int err = 0;

 switch (level) {
 case 129:
  if (snd_soc_component_get_bias_level(component) != 128)
   break;
  if (IS_ERR(cx20442->por))
   err = PTR_ERR(cx20442->por);
  else
   err = regulator_enable(cx20442->por);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) != 129)
   break;
  if (IS_ERR(cx20442->por))
   err = PTR_ERR(cx20442->por);
  else
   err = regulator_disable(cx20442->por);
  break;
 default:
  break;
 }

 return err;
}
