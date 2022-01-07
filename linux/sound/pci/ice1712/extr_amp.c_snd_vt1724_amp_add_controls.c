
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {scalar_t__ ac97; } ;


 int snd_ac97_read (scalar_t__,int) ;
 int snd_ac97_write_cache (scalar_t__,int,int) ;

__attribute__((used)) static int snd_vt1724_amp_add_controls(struct snd_ice1712 *ice)
{
 if (ice->ac97)


  snd_ac97_write_cache(ice->ac97, 0x5a,
   snd_ac97_read(ice->ac97, 0x5a) & ~0x8000);
 return 0;
}
