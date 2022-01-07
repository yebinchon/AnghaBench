
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int emu_lock; scalar_t__ port; } ;


 unsigned long inl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ca0106_proc_reg_read32(struct snd_info_entry *entry,
           struct snd_info_buffer *buffer)
{
 struct snd_ca0106 *emu = entry->private_data;
 unsigned long value;
 unsigned long flags;
 int i;
 snd_iprintf(buffer, "Registers:\n\n");
 for(i = 0; i < 0x20; i+=4) {
  spin_lock_irqsave(&emu->emu_lock, flags);
  value = inl(emu->port + i);
  spin_unlock_irqrestore(&emu->emu_lock, flags);
  snd_iprintf(buffer, "Register %02X: %08lX\n", i, value);
 }
}
