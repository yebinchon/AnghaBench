
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_private_data {int file_private_data; struct snd_info_entry* entry; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct snd_info_entry {TYPE_2__ c; } ;
struct file {struct snd_info_private_data* private_data; } ;
struct TYPE_3__ {long (* ioctl ) (struct snd_info_entry*,int ,struct file*,unsigned int,unsigned long) ;} ;


 long ENOTTY ;
 long stub1 (struct snd_info_entry*,int ,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long snd_info_entry_ioctl(struct file *file, unsigned int cmd,
    unsigned long arg)
{
 struct snd_info_private_data *data = file->private_data;
 struct snd_info_entry *entry = data->entry;

 if (!entry->c.ops->ioctl)
  return -ENOTTY;
 return entry->c.ops->ioctl(entry, data->file_private_data,
       file, cmd, arg);
}
