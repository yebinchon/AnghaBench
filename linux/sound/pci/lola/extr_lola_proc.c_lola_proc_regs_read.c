
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct lola* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lola {TYPE_1__* bar; } ;
struct TYPE_2__ {scalar_t__ remap_addr; } ;


 size_t BAR0 ;
 size_t BAR1 ;
 int BDPL ;
 int BDPU ;
 int CTL ;
 int LPIB ;
 int LVI ;
 int STS ;
 int lola_dsd_read (struct lola*,int,int ) ;
 int readl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void lola_proc_regs_read(struct snd_info_entry *entry,
    struct snd_info_buffer *buffer)
{
 struct lola *chip = entry->private_data;
 int i;

 for (i = 0; i < 0x40; i += 4) {
  snd_iprintf(buffer, "BAR0 %02x: %08x\n", i,
       readl(chip->bar[BAR0].remap_addr + i));
 }
 snd_iprintf(buffer, "\n");
 for (i = 0; i < 0x30; i += 4) {
  snd_iprintf(buffer, "BAR1 %02x: %08x\n", i,
       readl(chip->bar[BAR1].remap_addr + i));
 }
 snd_iprintf(buffer, "\n");
 for (i = 0x80; i < 0xa0; i += 4) {
  snd_iprintf(buffer, "BAR1 %02x: %08x\n", i,
       readl(chip->bar[BAR1].remap_addr + i));
 }
 snd_iprintf(buffer, "\n");
 for (i = 0; i < 32; i++) {
  snd_iprintf(buffer, "DSD %02x STS  %08x\n", i,
       lola_dsd_read(chip, i, STS));
  snd_iprintf(buffer, "DSD %02x LPIB %08x\n", i,
       lola_dsd_read(chip, i, LPIB));
  snd_iprintf(buffer, "DSD %02x CTL  %08x\n", i,
       lola_dsd_read(chip, i, CTL));
  snd_iprintf(buffer, "DSD %02x LVIL %08x\n", i,
       lola_dsd_read(chip, i, LVI));
  snd_iprintf(buffer, "DSD %02x BDPL %08x\n", i,
       lola_dsd_read(chip, i, BDPL));
  snd_iprintf(buffer, "DSD %02x BDPU %08x\n", i,
       lola_dsd_read(chip, i, BDPU));
 }
}
