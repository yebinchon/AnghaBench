
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8776_write (struct snd_ice1712*,int,unsigned char) ;

__attribute__((used)) static void se200pci_WM8776_set_input_selector(struct snd_ice1712 *ice,
            unsigned int sel)
{
 static unsigned char vals[] = {

  0x10, 0x04, 0x08, 0x1c, 0x03
 };
 if (sel > 4)
  sel = 4;
 se200pci_WM8776_write(ice, 0x15, vals[sel]);
}
