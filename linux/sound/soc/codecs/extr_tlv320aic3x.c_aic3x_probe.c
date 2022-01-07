
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct aic3x_priv {int model; int micbias_vg; TYPE_2__* setup; int regmap; TYPE_1__* disable_nb; TYPE_3__* supplies; struct snd_soc_component* component; } ;
struct TYPE_12__ {int notifier_call; } ;
struct TYPE_11__ {int consumer; } ;
struct TYPE_10__ {int* gpio_func; } ;
struct TYPE_9__ {TYPE_4__ nb; struct aic3x_priv* aic3x; } ;


 int AIC3X_GPIO1_REG ;
 int AIC3X_GPIO2_REG ;
 int ARRAY_SIZE (TYPE_3__*) ;
 int MICBIAS_CTRL ;
 int MICBIAS_LEVEL_MASK ;
 int MICBIAS_LEVEL_SHIFT ;
 int aic3x_add_widgets (struct snd_soc_component*) ;
 TYPE_3__ aic3x_classd_amp_gain_ctrl ;
 TYPE_3__* aic3x_extra_snd_controls ;
 int aic3x_init (struct snd_soc_component*) ;
 TYPE_3__* aic3x_mono_controls ;
 int aic3x_regulator_event ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int devm_regulator_register_notifier (int ,TYPE_4__*) ;
 int regcache_mark_dirty (int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,TYPE_3__*,int) ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic3x_probe(struct snd_soc_component *component)
{
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);
 int ret, i;

 aic3x->component = component;

 for (i = 0; i < ARRAY_SIZE(aic3x->supplies); i++) {
  aic3x->disable_nb[i].nb.notifier_call = aic3x_regulator_event;
  aic3x->disable_nb[i].aic3x = aic3x;
  ret = devm_regulator_register_notifier(
      aic3x->supplies[i].consumer,
      &aic3x->disable_nb[i].nb);
  if (ret) {
   dev_err(component->dev,
    "Failed to request regulator notifier: %d\n",
     ret);
   return ret;
  }
 }

 regcache_mark_dirty(aic3x->regmap);
 aic3x_init(component);

 if (aic3x->setup) {
  if (aic3x->model != 130) {

   snd_soc_component_write(component, AIC3X_GPIO1_REG,
          (aic3x->setup->gpio_func[0] & 0xf) << 4);
   snd_soc_component_write(component, AIC3X_GPIO2_REG,
          (aic3x->setup->gpio_func[1] & 0xf) << 4);
  } else {
   dev_warn(component->dev, "GPIO functionality is not supported on tlv320aic3104\n");
  }
 }

 switch (aic3x->model) {
 case 128:
 case 129:
  snd_soc_add_component_controls(component, aic3x_extra_snd_controls,
    ARRAY_SIZE(aic3x_extra_snd_controls));
  snd_soc_add_component_controls(component, aic3x_mono_controls,
    ARRAY_SIZE(aic3x_mono_controls));
  break;
 case 131:
  snd_soc_add_component_controls(component, aic3x_extra_snd_controls,
    ARRAY_SIZE(aic3x_extra_snd_controls));
  snd_soc_add_component_controls(component,
    &aic3x_classd_amp_gain_ctrl, 1);
  break;
 case 130:
  break;
 }


 switch (aic3x->micbias_vg) {
 case 135:
 case 134:
 case 133:
  snd_soc_component_update_bits(component, MICBIAS_CTRL,
        MICBIAS_LEVEL_MASK,
        (aic3x->micbias_vg) << MICBIAS_LEVEL_SHIFT);
  break;
 case 132:





  break;
 }

 aic3x_add_widgets(component);

 return 0;
}
