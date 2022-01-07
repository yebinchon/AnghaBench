
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_opl4 {scalar_t__ hardware; struct snd_info_entry* proc_entry; TYPE_2__* card; } ;
struct TYPE_3__ {int * ops; } ;
struct snd_info_entry {int mode; int size; struct snd_opl4* private_data; int module; TYPE_1__ c; int content; } ;
struct TYPE_4__ {int proc_root; } ;


 scalar_t__ OPL3_HW_OPL4_ML ;
 int SNDRV_INFO_CONTENT_DATA ;
 int THIS_MODULE ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_2__*,char*,int ) ;
 int snd_opl4_mem_proc_ops ;

int snd_opl4_create_proc(struct snd_opl4 *opl4)
{
 struct snd_info_entry *entry;

 entry = snd_info_create_card_entry(opl4->card, "opl4-mem", opl4->card->proc_root);
 if (entry) {
  if (opl4->hardware < OPL3_HW_OPL4_ML) {

   entry->mode |= 0200;
   entry->size = 4 * 1024 * 1024;
  } else {

   entry->size = 1 * 1024 * 1024;
  }
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->c.ops = &snd_opl4_mem_proc_ops;
  entry->module = THIS_MODULE;
  entry->private_data = opl4;
 }
 opl4->proc_entry = entry;
 return 0;
}
