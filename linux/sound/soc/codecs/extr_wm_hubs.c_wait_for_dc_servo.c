
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int dcs_done; scalar_t__ dcs_done_irq; } ;
struct snd_soc_component {int dev; } ;


 unsigned int WM8993_DCS_ENA_CHAN_0 ;
 unsigned int WM8993_DCS_ENA_CHAN_1 ;
 int WM8993_DC_SERVO_0 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned int) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void wait_for_dc_servo(struct snd_soc_component *component, unsigned int op)
{
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 unsigned int reg;
 int count = 0;
 int timeout;
 unsigned int val;

 val = op | WM8993_DCS_ENA_CHAN_0 | WM8993_DCS_ENA_CHAN_1;


 snd_soc_component_write(component, WM8993_DC_SERVO_0, val);

 dev_dbg(component->dev, "Waiting for DC servo...\n");

 if (hubs->dcs_done_irq)
  timeout = 4;
 else
  timeout = 400;

 do {
  count++;

  if (hubs->dcs_done_irq)
   wait_for_completion_timeout(&hubs->dcs_done,
          msecs_to_jiffies(250));
  else
   msleep(1);

  reg = snd_soc_component_read32(component, WM8993_DC_SERVO_0);
  dev_dbg(component->dev, "DC servo: %x\n", reg);
 } while (reg & op && count < timeout);

 if (reg & op)
  dev_err(component->dev, "Timed out waiting for DC Servo %x\n",
   op);
}
