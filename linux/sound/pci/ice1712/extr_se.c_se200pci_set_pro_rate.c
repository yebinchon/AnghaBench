
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8740_set_pro_rate (struct snd_ice1712*,unsigned int) ;
 int se200pci_WM8766_set_pro_rate (struct snd_ice1712*,unsigned int) ;
 int se200pci_WM8776_set_pro_rate (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void se200pci_set_pro_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 se200pci_WM8740_set_pro_rate(ice, rate);
 se200pci_WM8766_set_pro_rate(ice, rate);
 se200pci_WM8776_set_pro_rate(ice, rate);
}
