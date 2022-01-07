
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ARRAY_SIZE (unsigned short*) ;
 int se200pci_WM8776_set_afl (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_agc (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_input_selector (struct snd_ice1712*,int ) ;
 int se200pci_WM8776_set_input_volume (struct snd_ice1712*,int ,int ) ;
 int se200pci_WM8776_set_output_volume (struct snd_ice1712*,int ,int ) ;
 int se200pci_WM8776_write (struct snd_ice1712*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void se200pci_WM8776_init(struct snd_ice1712 *ice)
{
 int i;
 static unsigned short default_values[] = {
  0x100, 0x100, 0x100,
  0x100, 0x100, 0x100,
  0x000, 0x090, 0x000, 0x000,
  0x022, 0x022, 0x022,
  0x008, 0x0cf, 0x0cf, 0x07b, 0x000,
  0x032, 0x000, 0x0a6, 0x001, 0x001
 };

 se200pci_WM8776_write(ice, 0x17, 0x000);


 udelay(10);

 for (i = 0; i < ARRAY_SIZE(default_values); i++)
  se200pci_WM8776_write(ice, i, default_values[i]);

 se200pci_WM8776_set_input_selector(ice, 0);
 se200pci_WM8776_set_afl(ice, 0);
 se200pci_WM8776_set_agc(ice, 0);
 se200pci_WM8776_set_input_volume(ice, 0, 0);
 se200pci_WM8776_set_output_volume(ice, 0, 0);


 se200pci_WM8776_write(ice, 0x00, 0);
 se200pci_WM8776_write(ice, 0x01, 0);
 se200pci_WM8776_write(ice, 0x02, 0x100);
 se200pci_WM8776_write(ice, 0x0d, 0x080);
}
