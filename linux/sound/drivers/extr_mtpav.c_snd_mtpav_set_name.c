
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int number; int name; } ;
struct mtpav {int num_ports; } ;


 int sprintf (int ,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void snd_mtpav_set_name(struct mtpav *chip,
          struct snd_rawmidi_substream *substream)
{
 if (substream->number >= 0 && substream->number < chip->num_ports)
  sprintf(substream->name, "MTP direct %d", (substream->number % chip->num_ports) + 1);
 else if (substream->number >= 8 && substream->number < chip->num_ports * 2)
  sprintf(substream->name, "MTP remote %d", (substream->number % chip->num_ports) + 1);
 else if (substream->number == chip->num_ports * 2)
  strcpy(substream->name, "MTP computer");
 else if (substream->number == chip->num_ports * 2 + 1)
  strcpy(substream->name, "MTP ADAT");
 else
  strcpy(substream->name, "MTP broadcast");
}
