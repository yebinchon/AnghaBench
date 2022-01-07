
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct snd_info_entry {int size; TYPE_1__ c; struct cs4281* private_data; void* content; } ;
struct cs4281 {int card; } ;


 int CS4281_BA0_SIZE ;
 int CS4281_BA1_SIZE ;
 void* SNDRV_INFO_CONTENT_DATA ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_card_ro_proc_new (int ,char*,struct cs4281*,int ) ;
 int snd_cs4281_proc_ops_BA0 ;
 int snd_cs4281_proc_ops_BA1 ;
 int snd_cs4281_proc_read ;

__attribute__((used)) static void snd_cs4281_proc_init(struct cs4281 *chip)
{
 struct snd_info_entry *entry;

 snd_card_ro_proc_new(chip->card, "cs4281", chip, snd_cs4281_proc_read);
 if (! snd_card_proc_new(chip->card, "cs4281_BA0", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = chip;
  entry->c.ops = &snd_cs4281_proc_ops_BA0;
  entry->size = CS4281_BA0_SIZE;
 }
 if (! snd_card_proc_new(chip->card, "cs4281_BA1", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = chip;
  entry->c.ops = &snd_cs4281_proc_ops_BA1;
  entry->size = CS4281_BA1_SIZE;
 }
}
