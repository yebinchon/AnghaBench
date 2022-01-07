
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtm_spec {int mute_mutex; } ;
struct TYPE_2__ {int set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int force_rdma1; TYPE_1__ gpio; struct wtm_spec* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;


 struct wtm_spec* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int stac9460_2_put (struct snd_ice1712*,unsigned short,unsigned short) ;
 int stac9460_put (struct snd_ice1712*,unsigned short,unsigned short) ;
 int stac9460_set_rate_val ;

__attribute__((used)) static int wtm_init(struct snd_ice1712 *ice)
{
 static unsigned short stac_inits_wtm[] = {
  128, 0,
  129, 0x11,
  (unsigned short)-1
 };
 unsigned short *p;
 struct wtm_spec *spec;


 ice->num_total_dacs = 8;
 ice->num_total_adcs = 4;
 ice->force_rdma1 = 1;


 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;
 mutex_init(&spec->mute_mutex);



 p = stac_inits_wtm;
 for (; *p != (unsigned short)-1; p += 2) {
  stac9460_put(ice, p[0], p[1]);
  stac9460_2_put(ice, p[0], p[1]);
 }
 ice->gpio.set_pro_rate = stac9460_set_rate_val;
 return 0;
}
