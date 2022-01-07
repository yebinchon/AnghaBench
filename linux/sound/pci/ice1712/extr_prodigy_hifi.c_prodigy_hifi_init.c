
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* saved; } ;
struct snd_ice1712 {int vt1724; int num_total_dacs; int num_total_adcs; int akm_codecs; int pm_suspend_enabled; int * pm_resume; struct prodigy_hifi_spec* spec; void* akm; TYPE_1__ gpio; scalar_t__ vt1720; } ;
struct snd_akm4xxx {int dummy; } ;
struct prodigy_hifi_spec {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned short*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;
 int prodigy_hifi_resume ;
 int schedule_timeout_uninterruptible (int) ;
 int wm8766_init (struct snd_ice1712*) ;
 int wm8776_init (struct snd_ice1712*) ;
 int wm_put (struct snd_ice1712*,unsigned short,unsigned short) ;

__attribute__((used)) static int prodigy_hifi_init(struct snd_ice1712 *ice)
{
 static unsigned short wm8776_defaults[] = {
  131, 0x0022,
  136, 0x0022,
  145, 0x0022,
  138, 0x0090,
  129, 0x0001,
  133, 0x0179,
  132, 0x0179,
  140, 0x0000,
  140, 0x0100,
  139, 0x0000,
  139, 0x0100,
  128, 0x0000,



  137, 0x0000,
  147, 0x0000,
  146, 0x0000,

  143, 0x007b,
  142, 0x0000,
  141, 0x0000,
  130, 0x0000,

  134, 0x0000,
  144, 0x0003,
 };
 struct prodigy_hifi_spec *spec;
 unsigned int i;

 ice->vt1720 = 0;
 ice->vt1724 = 1;

 ice->num_total_dacs = 8;
 ice->num_total_adcs = 1;




 ice->gpio.saved[0] = 0;


 ice->akm = kzalloc(sizeof(struct snd_akm4xxx), GFP_KERNEL);
 if (! ice->akm)
  return -ENOMEM;
 ice->akm_codecs = 1;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;


 wm8776_init(ice);
 schedule_timeout_uninterruptible(1);
 for (i = 0; i < ARRAY_SIZE(wm8776_defaults); i += 2)
  wm_put(ice, wm8776_defaults[i], wm8776_defaults[i + 1]);

 wm8766_init(ice);






 return 0;
}
