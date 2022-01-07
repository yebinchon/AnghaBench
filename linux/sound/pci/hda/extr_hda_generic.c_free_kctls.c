
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int name; } ;
struct TYPE_2__ {int used; struct snd_kcontrol_new* list; } ;
struct hda_gen_spec {TYPE_1__ kctls; } ;


 int kfree (int ) ;
 int snd_array_free (TYPE_1__*) ;

__attribute__((used)) static void free_kctls(struct hda_gen_spec *spec)
{
 if (spec->kctls.list) {
  struct snd_kcontrol_new *kctl = spec->kctls.list;
  int i;
  for (i = 0; i < spec->kctls.used; i++)
   kfree(kctl[i].name);
 }
 snd_array_free(&spec->kctls);
}
