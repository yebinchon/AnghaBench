
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixart {int mgr; int card; } ;
struct TYPE_2__ {int * ops; } ;
struct snd_info_entry {int size; TYPE_1__ c; int private_data; void* content; } ;


 int MIXART_BA0_SIZE ;
 int MIXART_BA1_SIZE ;
 void* SNDRV_INFO_CONTENT_DATA ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_card_ro_proc_new (int ,char*,struct snd_mixart*,int ) ;
 int snd_mixart_proc_ops_BA0 ;
 int snd_mixart_proc_ops_BA1 ;
 int snd_mixart_proc_read ;

__attribute__((used)) static void snd_mixart_proc_init(struct snd_mixart *chip)
{
 struct snd_info_entry *entry;


 snd_card_ro_proc_new(chip->card, "board_info", chip,
        snd_mixart_proc_read);

 if (! snd_card_proc_new(chip->card, "mixart_BA0", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = chip->mgr;
  entry->c.ops = &snd_mixart_proc_ops_BA0;
  entry->size = MIXART_BA0_SIZE;
 }
 if (! snd_card_proc_new(chip->card, "mixart_BA1", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = chip->mgr;
  entry->c.ops = &snd_mixart_proc_ops_BA1;
  entry->size = MIXART_BA1_SIZE;
 }
}
