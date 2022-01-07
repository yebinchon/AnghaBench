
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_dbri* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_dbri {scalar_t__ regs; } ;


 scalar_t__ REG0 ;
 scalar_t__ REG2 ;
 scalar_t__ REG8 ;
 scalar_t__ REG9 ;
 int sbus_readl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int ) ;

__attribute__((used)) static void dbri_regs_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct snd_dbri *dbri = entry->private_data;

 snd_iprintf(buffer, "REG0: 0x%x\n", sbus_readl(dbri->regs + REG0));
 snd_iprintf(buffer, "REG2: 0x%x\n", sbus_readl(dbri->regs + REG2));
 snd_iprintf(buffer, "REG8: 0x%x\n", sbus_readl(dbri->regs + REG8));
 snd_iprintf(buffer, "REG9: 0x%x\n", sbus_readl(dbri->regs + REG9));
}
