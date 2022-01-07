
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_entry {scalar_t__ content; struct proc_dir_entry* p; int size; int mode; int name; TYPE_1__* parent; } ;
struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;
struct TYPE_4__ {struct proc_dir_entry* p; } ;
struct TYPE_3__ {struct proc_dir_entry* p; } ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ SNDRV_INFO_CONTENT_DATA ;
 scalar_t__ S_ISDIR (int ) ;
 int info_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct proc_dir_entry* proc_create_data (int ,int ,struct proc_dir_entry*,struct file_operations const*,struct snd_info_entry*) ;
 struct proc_dir_entry* proc_mkdir_mode (int ,int ,struct proc_dir_entry*) ;
 int proc_set_size (struct proc_dir_entry*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct file_operations snd_info_entry_operations ;
 struct file_operations snd_info_text_entry_ops ;
 TYPE_2__* snd_proc_root ;

__attribute__((used)) static int __snd_info_register(struct snd_info_entry *entry)
{
 struct proc_dir_entry *root, *p = ((void*)0);

 if (snd_BUG_ON(!entry))
  return -ENXIO;
 root = entry->parent == ((void*)0) ? snd_proc_root->p : entry->parent->p;
 mutex_lock(&info_mutex);
 if (entry->p || !root)
  goto unlock;
 if (S_ISDIR(entry->mode)) {
  p = proc_mkdir_mode(entry->name, entry->mode, root);
  if (!p) {
   mutex_unlock(&info_mutex);
   return -ENOMEM;
  }
 } else {
  const struct file_operations *ops;
  if (entry->content == SNDRV_INFO_CONTENT_DATA)
   ops = &snd_info_entry_operations;
  else
   ops = &snd_info_text_entry_ops;
  p = proc_create_data(entry->name, entry->mode, root,
         ops, entry);
  if (!p) {
   mutex_unlock(&info_mutex);
   return -ENOMEM;
  }
  proc_set_size(p, entry->size);
 }
 entry->p = p;
 unlock:
 mutex_unlock(&info_mutex);
 return 0;
}
