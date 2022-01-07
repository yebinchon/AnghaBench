
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ice1712* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ice1712 {int dummy; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,int,int) ;
 int stac9460_get (struct snd_ice1712*,int) ;

__attribute__((used)) static void stac9460_proc_regs_read(struct snd_info_entry *entry,
  struct snd_info_buffer *buffer)
{
 struct snd_ice1712 *ice = entry->private_data;
 int reg, val;

 for (reg = 0; reg <= 0x15; reg++) {
  val = stac9460_get(ice, reg);
  snd_iprintf(buffer, "0x%02x = 0x%02x\n", reg, val);
 }
}
