
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* saved; } ;
struct snd_ice1712 {int vt1724; int num_total_dacs; int num_total_adcs; int akm_codecs; int pm_suspend_enabled; int * pm_resume; struct prodigy_hifi_spec* spec; void* akm; TYPE_1__ gpio; scalar_t__ vt1720; } ;
struct snd_akm4xxx {int dummy; } ;
struct prodigy_hifi_spec {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ak4396_init (struct snd_ice1712*) ;
 void* kzalloc (int,int ) ;
 int prodigy_hd2_resume ;

__attribute__((used)) static int prodigy_hd2_init(struct snd_ice1712 *ice)
{
 struct prodigy_hifi_spec *spec;

 ice->vt1720 = 0;
 ice->vt1724 = 1;

 ice->num_total_dacs = 1;
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






 ak4396_init(ice);

 return 0;
}
