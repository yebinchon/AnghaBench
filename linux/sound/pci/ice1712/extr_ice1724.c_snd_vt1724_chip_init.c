
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* data; int gpiostate; int gpiodir; int gpiomask; } ;
struct TYPE_3__ {int direction; int write_mask; } ;
struct snd_ice1712 {TYPE_2__ eeprom; TYPE_1__ gpio; } ;


 int AC97_CFG ;
 int DMA_INT_MASK ;
 int I2S_FEATURES ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 size_t ICE_EEP2_ACLINK ;
 size_t ICE_EEP2_I2S ;
 size_t ICE_EEP2_SPDIF ;
 size_t ICE_EEP2_SYSCONF ;
 int IRQMASK ;
 int POWERDOWN ;
 int SPDIF_CFG ;
 int SYS_CFG ;
 int VT1724_IRQ_MPU_RX ;
 int VT1724_IRQ_MPU_TX ;
 int VT1724_MULTI_FIFO_ERR ;
 int outb (int,int ) ;
 int snd_vt1724_set_gpio_data (struct snd_ice1712*,int ) ;
 int snd_vt1724_set_gpio_dir (struct snd_ice1712*,int ) ;
 int snd_vt1724_set_gpio_mask (struct snd_ice1712*,int ) ;

__attribute__((used)) static int snd_vt1724_chip_init(struct snd_ice1712 *ice)
{
 outb(ice->eeprom.data[ICE_EEP2_SYSCONF], ICEREG1724(ice, SYS_CFG));
 outb(ice->eeprom.data[ICE_EEP2_ACLINK], ICEREG1724(ice, AC97_CFG));
 outb(ice->eeprom.data[ICE_EEP2_I2S], ICEREG1724(ice, I2S_FEATURES));
 outb(ice->eeprom.data[ICE_EEP2_SPDIF], ICEREG1724(ice, SPDIF_CFG));

 ice->gpio.write_mask = ice->eeprom.gpiomask;
 ice->gpio.direction = ice->eeprom.gpiodir;
 snd_vt1724_set_gpio_mask(ice, ice->eeprom.gpiomask);
 snd_vt1724_set_gpio_dir(ice, ice->eeprom.gpiodir);
 snd_vt1724_set_gpio_data(ice, ice->eeprom.gpiostate);

 outb(0, ICEREG1724(ice, POWERDOWN));


 outb(VT1724_IRQ_MPU_RX | VT1724_IRQ_MPU_TX , ICEREG1724(ice, IRQMASK));




 outb(VT1724_MULTI_FIFO_ERR, ICEMT1724(ice, DMA_INT_MASK));

 return 0;
}
