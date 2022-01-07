
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_private_data {int file_private_data; struct snd_info_entry* entry; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct snd_info_entry {scalar_t__ size; int access; TYPE_2__ c; } ;
struct file {scalar_t__ f_pos; struct snd_info_private_data* private_data; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {scalar_t__ (* llseek ) (struct snd_info_entry*,int ,struct file*,scalar_t__,int) ;} ;


 scalar_t__ EINVAL ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct snd_info_entry*,int ,struct file*,scalar_t__,int) ;

__attribute__((used)) static loff_t snd_info_entry_llseek(struct file *file, loff_t offset, int orig)
{
 struct snd_info_private_data *data;
 struct snd_info_entry *entry;
 loff_t ret = -EINVAL, size;

 data = file->private_data;
 entry = data->entry;
 mutex_lock(&entry->access);
 if (entry->c.ops->llseek) {
  offset = entry->c.ops->llseek(entry,
           data->file_private_data,
           file, offset, orig);
  goto out;
 }

 size = entry->size;
 switch (orig) {
 case 128:
  break;
 case 130:
  offset += file->f_pos;
  break;
 case 129:
  if (!size)
   goto out;
  offset += size;
  break;
 default:
  goto out;
 }
 if (offset < 0)
  goto out;
 if (size && offset > size)
  offset = size;
 file->f_pos = offset;
 ret = offset;
 out:
 mutex_unlock(&entry->access);
 return ret;
}
