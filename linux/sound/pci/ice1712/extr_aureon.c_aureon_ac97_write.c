
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct aureon_spec* spec; } ;
struct aureon_spec {unsigned short* stac9744; } ;


 unsigned int AUREON_AC97_ADDR ;
 unsigned int AUREON_AC97_COMMIT ;
 unsigned int AUREON_AC97_DATA_HIGH ;
 unsigned int AUREON_AC97_DATA_LOW ;
 unsigned int AUREON_AC97_DATA_MASK ;
 int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void aureon_ac97_write(struct snd_ice1712 *ice, unsigned short reg,
         unsigned short val)
{
 struct aureon_spec *spec = ice->spec;
 unsigned int tmp;


 tmp = (snd_ice1712_gpio_read(ice) & ~0xFF) | (reg & 0x7F);
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp |= AUREON_AC97_ADDR;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp &= ~AUREON_AC97_ADDR;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);


 tmp &= ~AUREON_AC97_DATA_MASK;
 tmp |= val & AUREON_AC97_DATA_MASK;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp |= AUREON_AC97_DATA_LOW;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp &= ~AUREON_AC97_DATA_LOW;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);


 tmp &= ~AUREON_AC97_DATA_MASK;
 tmp |= (val >> 8) & AUREON_AC97_DATA_MASK;

 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp |= AUREON_AC97_DATA_HIGH;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp &= ~AUREON_AC97_DATA_HIGH;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);


 tmp |= AUREON_AC97_COMMIT;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);
 tmp &= ~AUREON_AC97_COMMIT;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(10);


 spec->stac9744[(reg & 0x7F) >> 1] = val;
}
