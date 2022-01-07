
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_ice1712* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,int) ;
 int wm_get (struct snd_ice1712*,int) ;

__attribute__((used)) static void wm_proc_regs_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_ice1712 *ice = entry->private_data;
 int reg, val;

 mutex_lock(&ice->gpio_mutex);
 for (reg = 0; reg <= 0x17; reg++) {
  val = wm_get(ice, reg);
  snd_iprintf(buffer, "%02x = %04x\n", reg, val);
 }
 mutex_unlock(&ice->gpio_mutex);
}
