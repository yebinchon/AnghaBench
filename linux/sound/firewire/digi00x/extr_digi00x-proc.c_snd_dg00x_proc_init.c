
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {int mode; } ;
struct snd_dg00x {TYPE_1__* card; } ;
struct TYPE_2__ {struct snd_info_entry* proc_root; } ;


 int S_IFDIR ;
 int proc_read_clock ;
 struct snd_info_entry* snd_info_create_card_entry (TYPE_1__*,char*,struct snd_info_entry*) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_dg00x*,int ) ;

void snd_dg00x_proc_init(struct snd_dg00x *dg00x)
{
 struct snd_info_entry *root, *entry;





 root = snd_info_create_card_entry(dg00x->card, "firewire",
       dg00x->card->proc_root);
 if (root == ((void*)0))
  return;

 root->mode = S_IFDIR | 0555;

 entry = snd_info_create_card_entry(dg00x->card, "clock", root);
 if (entry)
  snd_info_set_text_ops(entry, dg00x, proc_read_clock);
}
