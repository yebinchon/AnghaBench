
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;


 unsigned char ICE1712_DELTA_1010LT_CCLK ;
 unsigned char ICE1712_DELTA_1010LT_CS ;
 unsigned char ICE1712_DELTA_1010LT_CS_CS8427 ;
 unsigned char ICE1712_DELTA_66E_CCLK ;
 unsigned char ICE1712_DELTA_66E_CS_CHIP_A ;
 unsigned char ICE1712_DELTA_66E_CS_CHIP_B ;
 unsigned char ICE1712_DELTA_66E_CS_CS8427 ;
 unsigned char ICE1712_DELTA_AP_CCLK ;
 unsigned char ICE1712_DELTA_AP_CS_CODEC ;
 unsigned char ICE1712_DELTA_AP_CS_DIGITAL ;
 int ICE1712_IREG_GPIO_DATA ;






 unsigned char ICE1712_VX442_CCLK ;
 unsigned char ICE1712_VX442_CODEC_CHIP_A ;
 unsigned char ICE1712_VX442_CODEC_CHIP_B ;
 unsigned char ICE1712_VX442_CS_DIGITAL ;
 unsigned char snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char ap_cs8427_codec_select(struct snd_ice1712 *ice)
{
 unsigned char tmp;
 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 switch (ice->eeprom.subvendor) {
 case 132:
 case 131:
  tmp &= ~ICE1712_DELTA_1010LT_CS;
  tmp |= ICE1712_DELTA_1010LT_CCLK | ICE1712_DELTA_1010LT_CS_CS8427;
  break;
 case 133:
 case 130:
  tmp |= ICE1712_DELTA_AP_CCLK | ICE1712_DELTA_AP_CS_CODEC;
  tmp &= ~ICE1712_DELTA_AP_CS_DIGITAL;
  break;
 case 129:
  tmp |= ICE1712_DELTA_66E_CCLK | ICE1712_DELTA_66E_CS_CHIP_A |
         ICE1712_DELTA_66E_CS_CHIP_B;
  tmp &= ~ICE1712_DELTA_66E_CS_CS8427;
  break;
 case 128:
  tmp |= ICE1712_VX442_CCLK | ICE1712_VX442_CODEC_CHIP_A | ICE1712_VX442_CODEC_CHIP_B;
  tmp &= ~ICE1712_VX442_CS_DIGITAL;
  break;
 }
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
 udelay(5);
 return tmp;
}
