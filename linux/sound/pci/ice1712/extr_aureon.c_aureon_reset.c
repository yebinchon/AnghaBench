
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; struct aureon_spec* spec; } ;
struct aureon_spec {int cs8415_mux; } ;


 unsigned int AUREON_CS8415_CS ;
 unsigned int AUREON_HP_SEL ;
 unsigned int AUREON_WM_CS ;
 unsigned int AUREON_WM_RESET ;
 int PCA9554_DIR ;
 int PCA9554_OUT ;
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71 ;
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71LT ;
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71XT ;
 int aureon_ac97_init (struct snd_ice1712*) ;
 int aureon_pca9554_write (struct snd_ice1712*,int ,int) ;
 int aureon_set_headphone_amp (struct snd_ice1712*,int) ;
 int aureon_spi_write (struct snd_ice1712*,unsigned int,unsigned short const,int) ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,int) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int udelay (int) ;
 int wm_put (struct snd_ice1712*,unsigned short const,unsigned short const) ;

__attribute__((used)) static int aureon_reset(struct snd_ice1712 *ice)
{
 static const unsigned short wm_inits_aureon[] = {

  0x1b, 0x044,
  0x1c, 0x00B,
  0x1d, 0x009,

  0x18, 0x000,

  0x16, 0x122,
  0x17, 0x022,
  0x00, 0,
  0x01, 0,
  0x02, 0,
  0x03, 0,
  0x04, 0,
  0x05, 0,
  0x06, 0,
  0x07, 0,
  0x08, 0x100,
  0x09, 0xff,
  0x0a, 0xff,
  0x0b, 0xff,
  0x0c, 0xff,
  0x0d, 0xff,
  0x0e, 0xff,
  0x0f, 0xff,
  0x10, 0xff,
  0x11, 0x1ff,
  0x12, 0x000,
  0x13, 0x090,
  0x14, 0x000,
  0x15, 0x000,
  0x19, 0x000,
  0x1a, 0x000,
  (unsigned short)-1
 };
 static const unsigned short wm_inits_prodigy[] = {


  0x1b, 0x000,
  0x1c, 0x009,
  0x1d, 0x009,

  0x18, 0x000,

  0x16, 0x022,
  0x17, 0x006,

  0x00, 0,
  0x01, 0,
  0x02, 0,
  0x03, 0,
  0x04, 0,
  0x05, 0,
  0x06, 0,
  0x07, 0,
  0x08, 0x100,

  0x09, 0x7f,
  0x0a, 0x7f,
  0x0b, 0x7f,
  0x0c, 0x7f,
  0x0d, 0x7f,
  0x0e, 0x7f,
  0x0f, 0x7f,
  0x10, 0x7f,
  0x11, 0x1FF,

  0x12, 0x000,
  0x13, 0x090,
  0x14, 0x000,
  0x15, 0x000,

  0x19, 0x000,
  0x1a, 0x000,
  (unsigned short)-1

 };
 static const unsigned short cs_inits[] = {
  0x0441,
  0x0180,
  0x0201,
  0x0605,
  (unsigned short)-1
 };
 unsigned int tmp;
 const unsigned short *p;
 int err;
 struct aureon_spec *spec = ice->spec;

 err = aureon_ac97_init(ice);
 if (err != 0)
  return err;

 snd_ice1712_gpio_set_dir(ice, 0x5fffff);


 snd_ice1712_save_gpio_status(ice);
 snd_ice1712_gpio_set_mask(ice, ~(AUREON_WM_RESET|AUREON_WM_CS|AUREON_CS8415_CS|AUREON_HP_SEL));

 tmp = snd_ice1712_gpio_read(ice);
 tmp &= ~AUREON_WM_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 tmp |= AUREON_WM_CS | AUREON_CS8415_CS;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 tmp |= AUREON_WM_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);


 if (ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71 ||
  ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71LT ||
  ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71XT)
  p = wm_inits_prodigy;
 else
  p = wm_inits_aureon;
 for (; *p != (unsigned short)-1; p += 2)
  wm_put(ice, p[0], p[1]);


 if (ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71LT &&
     ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71XT) {
  for (p = cs_inits; *p != (unsigned short)-1; p++)
   aureon_spi_write(ice, AUREON_CS8415_CS, *p | 0x200000, 24);
  spec->cs8415_mux = 1;

  aureon_set_headphone_amp(ice, 1);
 }

 snd_ice1712_restore_gpio_status(ice);


 aureon_pca9554_write(ice, PCA9554_DIR, 0x00);
 aureon_pca9554_write(ice, PCA9554_OUT, 0x00);
 return 0;
}
