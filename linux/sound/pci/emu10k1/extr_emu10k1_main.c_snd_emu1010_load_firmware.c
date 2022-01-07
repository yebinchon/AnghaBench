
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_emu10k1 {TYPE_2__* pci; TYPE_1__* card_capabilities; } ;
struct firmware {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {size_t emu_model; } ;


 char*** firmware_names ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int snd_emu1010_load_firmware_entry (struct snd_emu10k1*,struct firmware const*) ;

__attribute__((used)) static int snd_emu1010_load_firmware(struct snd_emu10k1 *emu, int dock,
         const struct firmware **fw)
{
 const char *filename;
 int err;

 if (!*fw) {
  filename = firmware_names[emu->card_capabilities->emu_model][dock];
  if (!filename)
   return 0;
  err = request_firmware(fw, filename, &emu->pci->dev);
  if (err)
   return err;
 }

 return snd_emu1010_load_firmware_entry(emu, *fw);
}
