
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_private_data {struct snd_info_entry* entry; } ;
struct snd_info_entry {int module; int p; } ;


 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_info_private_data* kzalloc (int,int ) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int alloc_info_private(struct snd_info_entry *entry,
         struct snd_info_private_data **ret)
{
 struct snd_info_private_data *data;

 if (!entry || !entry->p)
  return -ENODEV;
 if (!try_module_get(entry->module))
  return -EFAULT;
 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  module_put(entry->module);
  return -ENOMEM;
 }
 data->entry = entry;
 *ret = data;
 return 0;
}
