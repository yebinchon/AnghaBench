
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; scalar_t__* private_value; } ;
struct snd_ak4xxx_private {unsigned int add_flags; unsigned int mask_flags; unsigned int cs_mask; unsigned int cs_addr; int caddr; unsigned int clk_mask; unsigned int data_mask; unsigned int cs_none; scalar_t__ cif; } ;


 scalar_t__ snd_BUG_ON (int) ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_ice1712_akm4xxx_write(struct snd_akm4xxx *ak, int chip,
          unsigned char addr, unsigned char data)
{
 unsigned int tmp;
 int idx;
 unsigned int addrdata;
 struct snd_ak4xxx_private *priv = (void *)ak->private_value[0];
 struct snd_ice1712 *ice = ak->private_data[0];

 if (snd_BUG_ON(chip < 0 || chip >= 4))
  return;

 tmp = snd_ice1712_gpio_read(ice);
 tmp |= priv->add_flags;
 tmp &= ~priv->mask_flags;
 if (priv->cs_mask == priv->cs_addr) {
  if (priv->cif) {
   tmp |= priv->cs_mask;
  } else {
   tmp &= ~priv->cs_mask;
   snd_ice1712_gpio_write(ice, tmp);
   udelay(1);
  }
 } else {

  tmp &= ~priv->cs_mask;
  tmp |= priv->cs_addr;
  snd_ice1712_gpio_write(ice, tmp);
  udelay(1);
 }


 addrdata = (priv->caddr << 6) | 0x20 | (addr & 0x1f);
 addrdata = (addrdata << 8) | data;
 for (idx = 15; idx >= 0; idx--) {

  tmp &= ~priv->clk_mask;
  snd_ice1712_gpio_write(ice, tmp);
  udelay(1);

  if (addrdata & (1 << idx))
   tmp |= priv->data_mask;
  else
   tmp &= ~priv->data_mask;
  snd_ice1712_gpio_write(ice, tmp);
  udelay(1);

  tmp |= priv->clk_mask;
  snd_ice1712_gpio_write(ice, tmp);
  udelay(1);
 }

 if (priv->cs_mask == priv->cs_addr) {
  if (priv->cif) {

   tmp &= ~priv->cs_mask;
   snd_ice1712_gpio_write(ice, tmp);
   udelay(1);
  }
  tmp |= priv->cs_mask;
 } else {
  tmp &= ~priv->cs_mask;
  tmp |= priv->cs_none;
 }
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
}
