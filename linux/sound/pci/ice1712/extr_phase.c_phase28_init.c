
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int akm_codecs; struct snd_akm4xxx* akm; struct phase28_spec* spec; } ;
struct snd_akm4xxx {int dummy; } ;
struct phase28_spec {void** master; void** vol; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PHASE28_HP_SEL ;
 unsigned int PHASE28_WM_CS ;
 unsigned int PHASE28_WM_RESET ;
 void* WM_VOL_MUTE ;
 void* kzalloc (int,int ) ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,int) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int udelay (int) ;
 int wm_put (struct snd_ice1712*,unsigned short const,unsigned short const) ;
 int wm_set_vol (struct snd_ice1712*,int,void*,void*) ;

__attribute__((used)) static int phase28_init(struct snd_ice1712 *ice)
{
 static const unsigned short wm_inits_phase28[] = {

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

 unsigned int tmp;
 struct snd_akm4xxx *ak;
 struct phase28_spec *spec;
 const unsigned short *p;
 int i;

 ice->num_total_dacs = 8;
 ice->num_total_adcs = 2;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;


 ice->akm = kzalloc(sizeof(struct snd_akm4xxx), GFP_KERNEL);
 ak = ice->akm;
 if (!ak)
  return -ENOMEM;
 ice->akm_codecs = 1;

 snd_ice1712_gpio_set_dir(ice, 0x5fffff);


 snd_ice1712_save_gpio_status(ice);
 snd_ice1712_gpio_set_mask(ice, ~(PHASE28_WM_RESET|PHASE28_WM_CS|
     PHASE28_HP_SEL));

 tmp = snd_ice1712_gpio_read(ice);
 tmp &= ~PHASE28_WM_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 tmp |= PHASE28_WM_CS;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 tmp |= PHASE28_WM_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);

 p = wm_inits_phase28;
 for (; *p != (unsigned short)-1; p += 2)
  wm_put(ice, p[0], p[1]);

 snd_ice1712_restore_gpio_status(ice);

 spec->master[0] = WM_VOL_MUTE;
 spec->master[1] = WM_VOL_MUTE;
 for (i = 0; i < ice->num_total_dacs; i++) {
  spec->vol[i] = WM_VOL_MUTE;
  wm_set_vol(ice, i, spec->vol[i], spec->master[i % 2]);
 }

 return 0;
}
