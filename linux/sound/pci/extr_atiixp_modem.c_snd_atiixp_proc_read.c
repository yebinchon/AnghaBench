
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct atiixp_modem* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct atiixp_modem {scalar_t__ remap_addr; } ;


 int readl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,int ) ;

__attribute__((used)) static void snd_atiixp_proc_read(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct atiixp_modem *chip = entry->private_data;
 int i;

 for (i = 0; i < 256; i += 4)
  snd_iprintf(buffer, "%02x: %08x\n", i, readl(chip->remap_addr + i));
}
