
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx {scalar_t__ port; TYPE_1__* card; } ;
struct snd_info_entry {struct via82xx* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int longname; } ;


 int inl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,...) ;

__attribute__((used)) static void snd_via82xx_proc_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct via82xx *chip = entry->private_data;
 int i;

 snd_iprintf(buffer, "%s\n\n", chip->card->longname);
 for (i = 0; i < 0xa0; i += 4) {
  snd_iprintf(buffer, "%02x: %08x\n", i, inl(chip->port + i));
 }
}
