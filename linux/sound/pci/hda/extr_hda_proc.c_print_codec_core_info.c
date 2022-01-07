
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hdac_device {scalar_t__ mfg; int revision_id; int subsystem_id; int vendor_id; int mfg_unsol; int mfg_function_id; int afg_unsol; int afg_function_id; scalar_t__ afg; int addr; scalar_t__ chip_name; scalar_t__ vendor_name; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_codec_core_info(struct hdac_device *codec,
      struct snd_info_buffer *buffer)
{
 snd_iprintf(buffer, "Codec: ");
 if (codec->vendor_name && codec->chip_name)
  snd_iprintf(buffer, "%s %s\n",
       codec->vendor_name, codec->chip_name);
 else
  snd_iprintf(buffer, "Not Set\n");
 snd_iprintf(buffer, "Address: %d\n", codec->addr);
 if (codec->afg)
  snd_iprintf(buffer, "AFG Function Id: 0x%x (unsol %u)\n",
   codec->afg_function_id, codec->afg_unsol);
 if (codec->mfg)
  snd_iprintf(buffer, "MFG Function Id: 0x%x (unsol %u)\n",
   codec->mfg_function_id, codec->mfg_unsol);
 snd_iprintf(buffer, "Vendor Id: 0x%08x\n", codec->vendor_id);
 snd_iprintf(buffer, "Subsystem Id: 0x%08x\n", codec->subsystem_id);
 snd_iprintf(buffer, "Revision Id: 0x%x\n", codec->revision_id);

 if (codec->mfg)
  snd_iprintf(buffer, "Modem Function Group: 0x%x\n", codec->mfg);
 else
  snd_iprintf(buffer, "No Modem Function Group found\n");
}
