
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int jack_detect; } ;



__attribute__((used)) static bool psc724_get_jack_detection(struct snd_ice1712 *ice)
{
 struct psc724_spec *spec = ice->spec;

 return spec->jack_detect;
}
