
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ice1712 {struct se_spec* spec; } ;
struct se_spec {TYPE_1__* vol; } ;
struct TYPE_4__ {int target; int ch; } ;
struct TYPE_3__ {int ch1; int ch2; } ;
 int se200pci_WM8766_set_volume (struct snd_ice1712*,int ,int ,int ) ;
 int se200pci_WM8776_set_afl (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_agc (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_input_selector (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_input_volume (struct snd_ice1712*,int ,int ) ;
 int se200pci_WM8776_set_output_volume (struct snd_ice1712*,int ,int ) ;
 TYPE_2__* se200pci_cont ;

__attribute__((used)) static void se200pci_cont_update(struct snd_ice1712 *ice, int n)
{
 struct se_spec *spec = ice->spec;
 switch (se200pci_cont[n].target) {
 case 133:
  se200pci_WM8766_set_volume(ice,
        se200pci_cont[n].ch,
        spec->vol[n].ch1,
        spec->vol[n].ch2);
  break;

 case 130:
  se200pci_WM8776_set_input_volume(ice,
       spec->vol[n].ch1,
       spec->vol[n].ch2);
  break;

 case 129:
  se200pci_WM8776_set_output_volume(ice,
        spec->vol[n].ch1,
        spec->vol[n].ch2);
  break;

 case 128:
  se200pci_WM8776_set_input_selector(ice,
         spec->vol[n].ch1);
  break;

 case 131:
  se200pci_WM8776_set_agc(ice, spec->vol[n].ch1);
  break;

 case 132:
  se200pci_WM8776_set_afl(ice, spec->vol[n].ch1);
  break;

 default:
  break;
 }
}
