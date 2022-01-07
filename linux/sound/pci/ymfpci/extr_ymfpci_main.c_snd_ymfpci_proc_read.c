
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int dummy; } ;
struct snd_info_entry {struct snd_ymfpci* private_data; } ;
struct snd_info_buffer {int dummy; } ;


 int YDSXGR_WORKBASE ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int) ;

__attribute__((used)) static void snd_ymfpci_proc_read(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct snd_ymfpci *chip = entry->private_data;
 int i;

 snd_iprintf(buffer, "YMFPCI\n\n");
 for (i = 0; i <= YDSXGR_WORKBASE; i += 4)
  snd_iprintf(buffer, "%04x: %04x\n", i, snd_ymfpci_readl(chip, i));
}
