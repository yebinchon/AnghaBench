
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtm_spec {int mute_mutex; } ;
struct snd_ice1712 {struct wtm_spec* spec; } ;


 int STAC946X_MASTER_CLOCKING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stac9460_2_put (struct snd_ice1712*,int ,unsigned char) ;
 int stac9460_dac_mute_all (struct snd_ice1712*,int,unsigned short*) ;
 unsigned char stac9460_get (struct snd_ice1712*,int ) ;
 int stac9460_put (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void stac9460_set_rate_val(struct snd_ice1712 *ice, unsigned int rate)
{
 unsigned char old, new;
 unsigned short int changed;
 struct wtm_spec *spec = ice->spec;

 if (rate == 0)
  return;
 else if (rate <= 48000)
  new = 0x08;
 else if (rate <= 96000)
  new = 0x11;
 else
  new = 0x12;

 old = stac9460_get(ice, STAC946X_MASTER_CLOCKING);
 if (old == new)
  return;


 mutex_lock(&spec->mute_mutex);

 changed = 0xFFFF;
 stac9460_dac_mute_all(ice, 0, &changed);

 stac9460_put(ice, STAC946X_MASTER_CLOCKING, new);
 stac9460_2_put(ice, STAC946X_MASTER_CLOCKING, new);
 udelay(10);


 stac9460_dac_mute_all(ice, 1, &changed);
 mutex_unlock(&spec->mute_mutex);
}
