
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int emu_lock; scalar_t__ port; } ;
typedef int line ;


 int outl (int,scalar_t__) ;
 int snd_info_get_line (struct snd_info_buffer*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char*,char*,int*,int*) ;

__attribute__((used)) static void snd_ca0106_proc_reg_write32(struct snd_info_entry *entry,
           struct snd_info_buffer *buffer)
{
 struct snd_ca0106 *emu = entry->private_data;
 unsigned long flags;
        char line[64];
        u32 reg, val;
        while (!snd_info_get_line(buffer, line, sizeof(line))) {
                if (sscanf(line, "%x %x", &reg, &val) != 2)
                        continue;
  if (reg < 0x40 && val <= 0xffffffff) {
   spin_lock_irqsave(&emu->emu_lock, flags);
   outl(val, emu->port + (reg & 0xfffffffc));
   spin_unlock_irqrestore(&emu->emu_lock, flags);
  }
        }
}
