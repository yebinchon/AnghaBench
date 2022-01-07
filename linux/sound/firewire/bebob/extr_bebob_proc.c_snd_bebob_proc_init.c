
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_entry {int mode; } ;
struct snd_bebob {TYPE_1__* spec; TYPE_2__* card; } ;
struct TYPE_4__ {int proc_root; } ;
struct TYPE_3__ {int * meter; } ;


 int S_IFDIR ;
 int add_node (struct snd_bebob*,struct snd_info_entry*,char*,int ) ;
 int proc_read_clock ;
 int proc_read_formation ;
 int proc_read_hw_info ;
 int proc_read_meters ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_2__*,char*,int ) ;

void snd_bebob_proc_init(struct snd_bebob *bebob)
{
 struct snd_info_entry *root;





 root = snd_info_create_card_entry(bebob->card, "firewire",
       bebob->card->proc_root);
 if (root == ((void*)0))
  return;
 root->mode = S_IFDIR | 0555;

 add_node(bebob, root, "clock", proc_read_clock);
 add_node(bebob, root, "firmware", proc_read_hw_info);
 add_node(bebob, root, "formation", proc_read_formation);

 if (bebob->spec->meter != ((void*)0))
  add_node(bebob, root, "meter", proc_read_meters);
}
