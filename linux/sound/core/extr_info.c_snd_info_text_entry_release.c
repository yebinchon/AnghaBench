
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_private_data {struct snd_info_private_data* wbuffer; int buffer; struct snd_info_private_data* rbuffer; struct snd_info_entry* entry; } ;
struct TYPE_3__ {int (* write ) (struct snd_info_entry*,struct snd_info_private_data*) ;} ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct snd_info_entry {int module; TYPE_2__ c; } ;
struct seq_file {struct snd_info_private_data* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (struct snd_info_private_data*) ;
 int kvfree (int ) ;
 int module_put (int ) ;
 int single_release (struct inode*,struct file*) ;
 int stub1 (struct snd_info_entry*,struct snd_info_private_data*) ;

__attribute__((used)) static int snd_info_text_entry_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 struct snd_info_private_data *data = m->private;
 struct snd_info_entry *entry = data->entry;

 if (data->wbuffer && entry->c.text.write)
  entry->c.text.write(entry, data->wbuffer);

 single_release(inode, file);
 kfree(data->rbuffer);
 if (data->wbuffer) {
  kvfree(data->wbuffer->buffer);
  kfree(data->wbuffer);
 }

 module_put(entry->module);
 kfree(data);
 return 0;
}
