
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hp_pol; } ;
struct wm5100_priv {TYPE_1__ pdata; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;


 int ARRAY_SIZE (int *) ;
 int GPIOF_OUT_INIT_HIGH ;
 int WM5100_IRQ_DEBOUNCE_1 ;
 int WM5100_IRQ_DEBOUNCE_2 ;
 int WM5100_OUT_VU ;
 int dev_err (int *,char*,scalar_t__,int) ;
 int gpio_request_one (scalar_t__,int ,char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int *,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int * wm5100_dapm_widgets_noirq ;
 int * wm5100_dig_vu ;

__attribute__((used)) static int wm5100_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct i2c_client *i2c = to_i2c_client(component->dev);
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);
 int ret, i;

 wm5100->component = component;

 for (i = 0; i < ARRAY_SIZE(wm5100_dig_vu); i++)
  snd_soc_component_update_bits(component, wm5100_dig_vu[i], WM5100_OUT_VU,
        WM5100_OUT_VU);


 snd_soc_component_write(component, WM5100_IRQ_DEBOUNCE_1, 0);
 snd_soc_component_write(component, WM5100_IRQ_DEBOUNCE_2, 0);



 if (i2c->irq)
  snd_soc_dapm_new_controls(dapm, wm5100_dapm_widgets_noirq,
       ARRAY_SIZE(wm5100_dapm_widgets_noirq));

 if (wm5100->pdata.hp_pol) {
  ret = gpio_request_one(wm5100->pdata.hp_pol,
           GPIOF_OUT_INIT_HIGH, "WM5100 HP_POL");
  if (ret < 0) {
   dev_err(&i2c->dev, "Failed to request HP_POL %d: %d\n",
    wm5100->pdata.hp_pol, ret);
   goto err_gpio;
  }
 }

 return 0;

err_gpio:

 return ret;
}
