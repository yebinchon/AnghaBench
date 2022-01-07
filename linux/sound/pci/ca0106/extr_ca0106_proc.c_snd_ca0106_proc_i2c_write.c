
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int dummy; } ;
typedef int line ;


 int snd_ca0106_i2c_write (struct snd_ca0106*,unsigned int,unsigned int) ;
 int snd_info_get_line (struct snd_info_buffer*,char*,int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void snd_ca0106_proc_i2c_write(struct snd_info_entry *entry,
           struct snd_info_buffer *buffer)
{
 struct snd_ca0106 *emu = entry->private_data;
        char line[64];
        unsigned int reg, val;
        while (!snd_info_get_line(buffer, line, sizeof(line))) {
                if (sscanf(line, "%x %x", &reg, &val) != 2)
                        continue;
                if ((reg <= 0x7f) || (val <= 0x1ff)) {
                        snd_ca0106_i2c_write(emu, reg, val);
  }
        }
}
