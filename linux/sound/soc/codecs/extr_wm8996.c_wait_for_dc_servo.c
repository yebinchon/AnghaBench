
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8996_priv {int dcs_done; } ;
struct snd_soc_component {int dev; } ;
struct i2c_client {scalar_t__ irq; } ;


 int WM8996_DC_SERVO_2 ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void wait_for_dc_servo(struct snd_soc_component *component, u16 mask)
{
 struct i2c_client *i2c = to_i2c_client(component->dev);
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 int ret;
 unsigned long timeout = 200;

 snd_soc_component_write(component, WM8996_DC_SERVO_2, mask);


 do {
  if (i2c->irq) {
   timeout = wait_for_completion_timeout(&wm8996->dcs_done,
             msecs_to_jiffies(200));
   if (timeout == 0)
    dev_err(component->dev, "DC servo timed out\n");

  } else {
   msleep(1);
   timeout--;
  }

  ret = snd_soc_component_read32(component, WM8996_DC_SERVO_2);
  dev_dbg(component->dev, "DC servo state: %x\n", ret);
 } while (timeout && ret & mask);

 if (timeout == 0)
  dev_err(component->dev, "DC servo timed out for %x\n", mask);
 else
  dev_dbg(component->dev, "DC servo complete for %x\n", mask);
}
