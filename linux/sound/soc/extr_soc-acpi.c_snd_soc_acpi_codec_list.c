
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {int * quirk_data; } ;
struct snd_soc_acpi_codecs {int num_codecs; int * codecs; } ;


 int acpi_dev_present (int ,int *,int) ;

struct snd_soc_acpi_mach *snd_soc_acpi_codec_list(void *arg)
{
 struct snd_soc_acpi_mach *mach = arg;
 struct snd_soc_acpi_codecs *codec_list =
  (struct snd_soc_acpi_codecs *) mach->quirk_data;
 int i;

 if (mach->quirk_data == ((void*)0))
  return mach;

 for (i = 0; i < codec_list->num_codecs; i++) {
  if (!acpi_dev_present(codec_list->codecs[i], ((void*)0), -1))
   return ((void*)0);
 }

 return mach;
}
