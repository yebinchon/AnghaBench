
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int dummy; } ;
struct module {int dummy; } ;


 struct snd_info_entry* snd_info_create_entry (char const*,struct snd_info_entry*,struct module*) ;
 struct snd_info_entry* snd_proc_root ;

struct snd_info_entry *snd_info_create_module_entry(struct module * module,
            const char *name,
            struct snd_info_entry *parent)
{
 if (!parent)
  parent = snd_proc_root;
 return snd_info_create_entry(name, parent, module);
}
