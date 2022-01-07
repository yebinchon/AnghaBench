
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_private_data {int file_private_data; struct snd_info_entry* entry; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct snd_info_entry {int module; TYPE_2__ c; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snd_info_private_data* private_data; } ;
struct TYPE_3__ {int (* release ) (struct snd_info_entry*,int,int ) ;} ;


 int O_ACCMODE ;
 int kfree (struct snd_info_private_data*) ;
 int module_put (int ) ;
 int stub1 (struct snd_info_entry*,int,int ) ;

__attribute__((used)) static int snd_info_entry_release(struct inode *inode, struct file *file)
{
 struct snd_info_private_data *data = file->private_data;
 struct snd_info_entry *entry = data->entry;

 if (entry->c.ops->release)
  entry->c.ops->release(entry, file->f_flags & O_ACCMODE,
          data->file_private_data);
 module_put(entry->module);
 kfree(data);
 return 0;
}
