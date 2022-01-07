
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8766_write (struct snd_ice1712*,int,int) ;

__attribute__((used)) static void se200pci_WM8766_set_pro_rate(struct snd_ice1712 *ice,
     unsigned int rate)
{
 if (rate > 96000)
  se200pci_WM8766_write(ice, 0x0a, 0x000);
 else
  se200pci_WM8766_write(ice, 0x0a, 0x080);
}
