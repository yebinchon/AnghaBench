
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_motu {TYPE_1__* card; } ;
struct snd_info_entry {int mode; } ;
struct TYPE_2__ {int proc_root; } ;


 int S_IFDIR ;
 int add_node (struct snd_motu*,struct snd_info_entry*,char*,int ) ;
 int proc_read_clock ;
 int proc_read_format ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_1__*,char*,int ) ;

void snd_motu_proc_init(struct snd_motu *motu)
{
 struct snd_info_entry *root;





 root = snd_info_create_card_entry(motu->card, "firewire",
       motu->card->proc_root);
 if (root == ((void*)0))
  return;
 root->mode = S_IFDIR | 0555;

 add_node(motu, root, "clock", proc_read_clock);
 add_node(motu, root, "format", proc_read_format);
}
