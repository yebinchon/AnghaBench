
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int mode; } ;
struct module {int dummy; } ;


 int S_IFDIR ;
 struct snd_info_entry* snd_info_create_module_entry (struct module*,char const*,int *) ;
 int snd_info_free_entry (struct snd_info_entry*) ;
 scalar_t__ snd_info_register (struct snd_info_entry*) ;

__attribute__((used)) static struct snd_info_entry *create_subdir(struct module *mod,
         const char *name)
{
 struct snd_info_entry *entry;

 entry = snd_info_create_module_entry(mod, name, ((void*)0));
 if (!entry)
  return ((void*)0);
 entry->mode = S_IFDIR | 0555;
 if (snd_info_register(entry) < 0) {
  snd_info_free_entry(entry);
  return ((void*)0);
 }
 return entry;
}
