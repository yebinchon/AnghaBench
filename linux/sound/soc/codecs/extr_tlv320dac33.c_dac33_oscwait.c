
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;


 int DAC33_INT_OSC_STATUS ;
 int DAC33_OSCSTATUS_NORMAL ;
 int dac33_read (struct snd_soc_component*,int ,int*) ;
 int dev_err (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dac33_oscwait(struct snd_soc_component *component)
{
 int timeout = 60;
 u8 reg;

 do {
  usleep_range(1000, 2000);
  dac33_read(component, DAC33_INT_OSC_STATUS, &reg);
 } while (((reg & 0x03) != DAC33_OSCSTATUS_NORMAL) && timeout--);
 if ((reg & 0x03) != DAC33_OSCSTATUS_NORMAL)
  dev_err(component->dev,
   "internal oscillator calibration failed\n");
}
