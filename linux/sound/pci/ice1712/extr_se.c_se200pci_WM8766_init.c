
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8766_set_volume (struct snd_ice1712*,int,int ,int ) ;
 int se200pci_WM8766_write (struct snd_ice1712*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void se200pci_WM8766_init(struct snd_ice1712 *ice)
{
 se200pci_WM8766_write(ice, 0x1f, 0x000);
 udelay(10);

 se200pci_WM8766_set_volume(ice, 0, 0, 0);
 se200pci_WM8766_set_volume(ice, 1, 0, 0);
 se200pci_WM8766_set_volume(ice, 2, 0, 0);

 se200pci_WM8766_write(ice, 0x03, 0x022);
 se200pci_WM8766_write(ice, 0x0a, 0x080);
 se200pci_WM8766_write(ice, 0x12, 0x000);
 se200pci_WM8766_write(ice, 0x15, 0x000);
 se200pci_WM8766_write(ice, 0x09, 0x000);

 se200pci_WM8766_write(ice, 0x02, 0x124);
 se200pci_WM8766_write(ice, 0x02, 0x120);
}
