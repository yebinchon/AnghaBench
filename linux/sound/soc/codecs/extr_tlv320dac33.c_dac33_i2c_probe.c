
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct tlv320dac33_priv {scalar_t__ power_gpio; int mode1_latency; TYPE_3__* supplies; int fifo_mode; int irq; int keep_bclk; int burst_bclkdiv; int lock; int mutex; struct i2c_client* i2c; int reg_cache; } ;
struct tlv320dac33_platform_data {scalar_t__ power_gpio; int mode1_latency; int keep_bclk; int burst_bclkdiv; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct tlv320dac33_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;
struct TYPE_11__ {int supply; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DAC33_FIFO_BYPASS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dac33_dai ;
 TYPE_3__* dac33_reg ;
 int * dac33_supply_names ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_kmemdup (TYPE_1__*,TYPE_3__*,int,int ) ;
 struct tlv320dac33_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_1__*,int,TYPE_3__*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int gpio_direction_output (int,int ) ;
 int gpio_free (scalar_t__) ;
 int gpio_request (scalar_t__,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tlv320dac33_priv*) ;
 int mutex_init (int *) ;
 int soc_component_dev_tlv320dac33 ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dac33_i2c_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct tlv320dac33_platform_data *pdata;
 struct tlv320dac33_priv *dac33;
 int ret, i;

 if (client->dev.platform_data == ((void*)0)) {
  dev_err(&client->dev, "Platform data not set\n");
  return -ENODEV;
 }
 pdata = client->dev.platform_data;

 dac33 = devm_kzalloc(&client->dev, sizeof(struct tlv320dac33_priv),
        GFP_KERNEL);
 if (dac33 == ((void*)0))
  return -ENOMEM;

 dac33->reg_cache = devm_kmemdup(&client->dev,
     dac33_reg,
     ARRAY_SIZE(dac33_reg) * sizeof(u8),
     GFP_KERNEL);
 if (!dac33->reg_cache)
  return -ENOMEM;

 dac33->i2c = client;
 mutex_init(&dac33->mutex);
 spin_lock_init(&dac33->lock);

 i2c_set_clientdata(client, dac33);

 dac33->power_gpio = pdata->power_gpio;
 dac33->burst_bclkdiv = pdata->burst_bclkdiv;
 dac33->keep_bclk = pdata->keep_bclk;
 dac33->mode1_latency = pdata->mode1_latency;
 if (!dac33->mode1_latency)
  dac33->mode1_latency = 10000;
 dac33->irq = client->irq;

 dac33->fifo_mode = DAC33_FIFO_BYPASS;


 if (dac33->power_gpio >= 0) {
  ret = gpio_request(dac33->power_gpio, "tlv320dac33 reset");
  if (ret < 0) {
   dev_err(&client->dev,
    "Failed to request reset GPIO (%d)\n",
    dac33->power_gpio);
   goto err_gpio;
  }
  gpio_direction_output(dac33->power_gpio, 0);
 }

 for (i = 0; i < ARRAY_SIZE(dac33->supplies); i++)
  dac33->supplies[i].supply = dac33_supply_names[i];

 ret = devm_regulator_bulk_get(&client->dev, ARRAY_SIZE(dac33->supplies),
     dac33->supplies);

 if (ret != 0) {
  dev_err(&client->dev, "Failed to request supplies: %d\n", ret);
  goto err_get;
 }

 ret = devm_snd_soc_register_component(&client->dev,
   &soc_component_dev_tlv320dac33, &dac33_dai, 1);
 if (ret < 0)
  goto err_get;

 return ret;
err_get:
 if (dac33->power_gpio >= 0)
  gpio_free(dac33->power_gpio);
err_gpio:
 return ret;
}
