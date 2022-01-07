
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; TYPE_1__* bus; } ;
struct ca0132_spec {struct ca0132_spec* spec_init_verbs; scalar_t__ mem_base; int base_exit_verbs; int unsol_hp_work; } ;
struct TYPE_2__ {int pci; } ;







 int ae5_exit_chip (struct hda_codec*) ;
 int ca0132_exit_chip (struct hda_codec*) ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct ca0132_spec*) ;
 int pci_iounmap (int ,scalar_t__) ;
 int r3d_exit_chip (struct hda_codec*) ;
 int r3di_gpio_shutdown (struct hda_codec*) ;
 int sbz_exit_chip (struct hda_codec*) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;
 int zxr_exit_chip (struct hda_codec*) ;

__attribute__((used)) static void ca0132_free(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 cancel_delayed_work_sync(&spec->unsol_hp_work);
 snd_hda_power_up(codec);
 switch (ca0132_quirk(spec)) {
 case 129:
  sbz_exit_chip(codec);
  break;
 case 128:
  zxr_exit_chip(codec);
  break;
 case 131:
  r3d_exit_chip(codec);
  break;
 case 132:
  ae5_exit_chip(codec);
  break;
 case 130:
  r3di_gpio_shutdown(codec);
  break;
 default:
  break;
 }

 snd_hda_sequence_write(codec, spec->base_exit_verbs);
 ca0132_exit_chip(codec);

 snd_hda_power_down(codec);




 kfree(spec->spec_init_verbs);
 kfree(codec->spec);
}
