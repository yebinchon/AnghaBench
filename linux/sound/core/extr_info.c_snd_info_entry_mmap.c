
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct snd_info_private_data {int file_private_data; struct snd_info_entry* entry; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct snd_info_entry {TYPE_2__ c; } ;
struct inode {int dummy; } ;
struct file {struct snd_info_private_data* private_data; } ;
struct TYPE_3__ {int (* mmap ) (struct snd_info_entry*,int ,struct inode*,struct file*,struct vm_area_struct*) ;} ;


 int ENXIO ;
 struct inode* file_inode (struct file*) ;
 int stub1 (struct snd_info_entry*,int ,struct inode*,struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int snd_info_entry_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct inode *inode = file_inode(file);
 struct snd_info_private_data *data;
 struct snd_info_entry *entry;

 data = file->private_data;
 if (data == ((void*)0))
  return 0;
 entry = data->entry;
 if (!entry->c.ops->mmap)
  return -ENXIO;
 return entry->c.ops->mmap(entry, data->file_private_data,
      inode, file, vma);
}
