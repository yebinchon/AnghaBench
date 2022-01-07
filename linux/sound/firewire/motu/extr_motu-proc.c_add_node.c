
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int card; } ;
struct snd_info_entry {int dummy; } ;


 struct snd_info_entry* snd_info_create_card_entry (int ,char const*,struct snd_info_entry*) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_motu*,void (*) (struct snd_info_entry*,struct snd_info_buffer*)) ;

__attribute__((used)) static void add_node(struct snd_motu *motu, struct snd_info_entry *root,
       const char *name,
       void (*op)(struct snd_info_entry *e,
    struct snd_info_buffer *b))
{
 struct snd_info_entry *entry;

 entry = snd_info_create_card_entry(motu->card, name, root);
 if (entry)
  snd_info_set_text_ops(entry, motu, op);
}
