
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int wm8766; int wm8776; } ;


 int snd_wm8766_volume_restore (int *) ;
 int snd_wm8776_volume_restore (int *) ;

__attribute__((used)) static void psc724_set_pro_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 struct psc724_spec *spec = ice->spec;

 snd_wm8776_volume_restore(&spec->wm8776);
 snd_wm8766_volume_restore(&spec->wm8766);
}
