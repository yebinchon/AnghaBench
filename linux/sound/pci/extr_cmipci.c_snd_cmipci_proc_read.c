
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct cmipci* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct cmipci {scalar_t__ iobase; TYPE_1__* card; } ;
struct TYPE_2__ {int longname; } ;


 int inb (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_cmipci_proc_read(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct cmipci *cm = entry->private_data;
 int i, v;

 snd_iprintf(buffer, "%s\n", cm->card->longname);
 for (i = 0; i < 0x94; i++) {
  if (i == 0x28)
   i = 0x90;
  v = inb(cm->iobase + i);
  if (i % 4 == 0)
   snd_iprintf(buffer, "\n%02x:", i);
  snd_iprintf(buffer, " %02x", v);
 }
 snd_iprintf(buffer, "\n");
}
