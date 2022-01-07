
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 unsigned int WM9090_DCS_CAL_COMPLETE_MASK ;
 int WM9090_DC_SERVO_READBACK_0 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static void wait_for_dc_servo(struct snd_soc_component *component)
{
 unsigned int reg;
 int count = 0;

 dev_dbg(component->dev, "Waiting for DC servo...\n");
 do {
  count++;
  msleep(1);
  reg = snd_soc_component_read32(component, WM9090_DC_SERVO_READBACK_0);
  dev_dbg(component->dev, "DC servo status: %x\n", reg);
 } while ((reg & WM9090_DCS_CAL_COMPLETE_MASK)
   != WM9090_DCS_CAL_COMPLETE_MASK && count < 1000);

 if ((reg & WM9090_DCS_CAL_COMPLETE_MASK)
     != WM9090_DCS_CAL_COMPLETE_MASK)
  dev_err(component->dev, "Timed out waiting for DC Servo\n");
}
