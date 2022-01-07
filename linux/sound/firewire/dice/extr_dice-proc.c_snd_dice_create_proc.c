
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {int mode; } ;
struct snd_dice {TYPE_1__* card; } ;
struct TYPE_2__ {int proc_root; } ;


 int S_IFDIR ;
 int add_node (struct snd_dice*,struct snd_info_entry*,char*,int ) ;
 int dice_proc_read ;
 int dice_proc_read_formation ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_1__*,char*,int ) ;

void snd_dice_create_proc(struct snd_dice *dice)
{
 struct snd_info_entry *root;





 root = snd_info_create_card_entry(dice->card, "firewire",
       dice->card->proc_root);
 if (!root)
  return;
 root->mode = S_IFDIR | 0555;

 add_node(dice, root, "dice", dice_proc_read);
 add_node(dice, root, "formation", dice_proc_read_formation);
}
