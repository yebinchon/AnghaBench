
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* write ) (struct snd_info_entry*,struct snd_info_buffer*) ;} ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct snd_info_entry {int mode; TYPE_2__ c; } ;
struct snd_card {int proc_root; } ;


 int ENOMEM ;
 struct snd_info_entry* snd_info_create_card_entry (struct snd_card*,char const*,int ) ;
 int snd_info_set_text_ops (struct snd_info_entry*,void*,void (*) (struct snd_info_entry*,struct snd_info_buffer*)) ;

int snd_card_rw_proc_new(struct snd_card *card, const char *name,
    void *private_data,
    void (*read)(struct snd_info_entry *,
          struct snd_info_buffer *),
    void (*write)(struct snd_info_entry *entry,
           struct snd_info_buffer *buffer))
{
 struct snd_info_entry *entry;

 entry = snd_info_create_card_entry(card, name, card->proc_root);
 if (!entry)
  return -ENOMEM;
 snd_info_set_text_ops(entry, private_data, read);
 if (write) {
  entry->mode |= 0200;
  entry->c.text.write = write;
 }
 return 0;
}
