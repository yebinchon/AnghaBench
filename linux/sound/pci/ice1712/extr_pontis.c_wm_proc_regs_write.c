
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ice1712* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;
typedef int line ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_info_get_line (struct snd_info_buffer*,char*,int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*) ;
 int wm_put (struct snd_ice1712*,unsigned int,unsigned int) ;

__attribute__((used)) static void wm_proc_regs_write(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_ice1712 *ice = entry->private_data;
 char line[64];
 unsigned int reg, val;
 mutex_lock(&ice->gpio_mutex);
 while (!snd_info_get_line(buffer, line, sizeof(line))) {
  if (sscanf(line, "%x %x", &reg, &val) != 2)
   continue;
  if (reg <= 0x17 && val <= 0xffff)
   wm_put(ice, reg, val);
 }
 mutex_unlock(&ice->gpio_mutex);
}
