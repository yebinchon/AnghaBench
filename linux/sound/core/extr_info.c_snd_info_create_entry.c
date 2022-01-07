
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int mode; int access; int children; int list; struct module* module; struct snd_info_entry* parent; int content; int * name; } ;
struct module {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_INFO_CONTENT_TEXT ;
 int S_IFREG ;
 int kfree (struct snd_info_entry*) ;
 int * kstrdup (char const*,int ) ;
 struct snd_info_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct snd_info_entry *
snd_info_create_entry(const char *name, struct snd_info_entry *parent,
        struct module *module)
{
 struct snd_info_entry *entry;
 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (entry == ((void*)0))
  return ((void*)0);
 entry->name = kstrdup(name, GFP_KERNEL);
 if (entry->name == ((void*)0)) {
  kfree(entry);
  return ((void*)0);
 }
 entry->mode = S_IFREG | 0444;
 entry->content = SNDRV_INFO_CONTENT_TEXT;
 mutex_init(&entry->access);
 INIT_LIST_HEAD(&entry->children);
 INIT_LIST_HEAD(&entry->list);
 entry->parent = parent;
 entry->module = module;
 if (parent) {
  mutex_lock(&parent->access);
  list_add_tail(&entry->list, &parent->children);
  mutex_unlock(&parent->access);
 }
 return entry;
}
