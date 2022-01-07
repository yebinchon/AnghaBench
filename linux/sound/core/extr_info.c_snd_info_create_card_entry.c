
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int dummy; } ;
struct snd_card {int module; struct snd_info_entry* proc_root; } ;


 struct snd_info_entry* snd_info_create_entry (char const*,struct snd_info_entry*,int ) ;

struct snd_info_entry *snd_info_create_card_entry(struct snd_card *card,
          const char *name,
          struct snd_info_entry * parent)
{
 if (!parent)
  parent = card->proc_root;
 return snd_info_create_entry(name, parent, card->module);
}
