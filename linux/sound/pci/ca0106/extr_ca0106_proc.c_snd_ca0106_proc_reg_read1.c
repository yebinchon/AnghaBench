
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int dummy; } ;


 unsigned long snd_ca0106_ptr_read (struct snd_ca0106*,int,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_ca0106_proc_reg_read1(struct snd_info_entry *entry,
           struct snd_info_buffer *buffer)
{
 struct snd_ca0106 *emu = entry->private_data;
 unsigned long value;
 int i,j;

 snd_iprintf(buffer, "Registers\n");
 for(i = 0; i < 0x40; i++) {
  snd_iprintf(buffer, "%02X: ",i);
  for (j = 0; j < 4; j++) {
                  value = snd_ca0106_ptr_read(emu, i, j);
    snd_iprintf(buffer, "%08lX ", value);
                }
         snd_iprintf(buffer, "\n");
 }
}
