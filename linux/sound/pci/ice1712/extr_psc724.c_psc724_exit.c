
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int hp_work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void psc724_exit(struct snd_ice1712 *ice)
{
 struct psc724_spec *spec = ice->spec;

 cancel_delayed_work_sync(&spec->hp_work);
}
