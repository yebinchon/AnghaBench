
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; TYPE_2__* card; TYPE_1__ gpio; struct prodigy192_spec* spec; scalar_t__ vt1720; } ;
struct prodigy192_spec {int mute_mutex; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;


 int dev_dbg (int ,char*,...) ;
 struct prodigy192_spec* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int prodigy192_ak4114_init (struct snd_ice1712*) ;
 scalar_t__ prodigy192_miodio_exists (struct snd_ice1712*) ;
 int stac9460_put (struct snd_ice1712*,unsigned short const,unsigned short const) ;
 int stac9460_set_rate_val ;

__attribute__((used)) static int prodigy192_init(struct snd_ice1712 *ice)
{
 static const unsigned short stac_inits_prodigy[] = {
  128, 0,
  129, 0x11,







  (unsigned short)-1
 };
 const unsigned short *p;
 int err = 0;
 struct prodigy192_spec *spec;


 ice->num_total_dacs = 6;
 ice->num_total_adcs = 2;
 ice->vt1720 = 0;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;
 mutex_init(&spec->mute_mutex);


 p = stac_inits_prodigy;
 for (; *p != (unsigned short)-1; p += 2)
  stac9460_put(ice, p[0], p[1]);
 ice->gpio.set_pro_rate = stac9460_set_rate_val;


 if (prodigy192_miodio_exists(ice)) {
  err = prodigy192_ak4114_init(ice);



  dev_dbg(ice->card->dev,
   "AK4114 initialized with status %d\n", err);
 } else
  dev_dbg(ice->card->dev, "AK4114 not found\n");

 return err;
}
