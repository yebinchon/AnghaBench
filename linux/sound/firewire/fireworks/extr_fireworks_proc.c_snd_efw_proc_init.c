
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {int mode; } ;
struct snd_efw {TYPE_1__* card; } ;
struct TYPE_2__ {int proc_root; } ;


 int S_IFDIR ;
 int add_node (struct snd_efw*,struct snd_info_entry*,char*,int ) ;
 int proc_read_clock ;
 int proc_read_hwinfo ;
 int proc_read_phys_meters ;
 int proc_read_queues_state ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_1__*,char*,int ) ;

void snd_efw_proc_init(struct snd_efw *efw)
{
 struct snd_info_entry *root;





 root = snd_info_create_card_entry(efw->card, "firewire",
       efw->card->proc_root);
 if (root == ((void*)0))
  return;
 root->mode = S_IFDIR | 0555;

 add_node(efw, root, "clock", proc_read_clock);
 add_node(efw, root, "firmware", proc_read_hwinfo);
 add_node(efw, root, "meters", proc_read_phys_meters);
 add_node(efw, root, "queues", proc_read_queues_state);
}
