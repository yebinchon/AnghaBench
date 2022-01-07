
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct lola* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lola {int debug_res_ex; int debug_res; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,int ,int ) ;

__attribute__((used)) static void lola_proc_codec_rw_read(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct lola *chip = entry->private_data;
 snd_iprintf(buffer, "0x%x 0x%x\n", chip->debug_res, chip->debug_res_ex);
}
