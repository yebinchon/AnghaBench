
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_private_data {struct snd_info_private_data* rbuffer; } ;
struct snd_info_entry {int module; scalar_t__ size; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_info_entry* PDE_DATA (struct inode*) ;
 int alloc_info_private (struct snd_info_entry*,struct snd_info_private_data**) ;
 int info_mutex ;
 int kfree (struct snd_info_private_data*) ;
 struct snd_info_private_data* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int single_open (struct file*,int ,struct snd_info_private_data*) ;
 int single_open_size (struct file*,int ,struct snd_info_private_data*,scalar_t__) ;
 int snd_info_seq_show ;

__attribute__((used)) static int snd_info_text_entry_open(struct inode *inode, struct file *file)
{
 struct snd_info_entry *entry = PDE_DATA(inode);
 struct snd_info_private_data *data;
 int err;

 mutex_lock(&info_mutex);
 err = alloc_info_private(entry, &data);
 if (err < 0)
  goto unlock;

 data->rbuffer = kzalloc(sizeof(*data->rbuffer), GFP_KERNEL);
 if (!data->rbuffer) {
  err = -ENOMEM;
  goto error;
 }
 if (entry->size)
  err = single_open_size(file, snd_info_seq_show, data,
           entry->size);
 else
  err = single_open(file, snd_info_seq_show, data);
 if (err < 0)
  goto error;
 mutex_unlock(&info_mutex);
 return 0;

 error:
 kfree(data->rbuffer);
 kfree(data);
 module_put(entry->module);
 unlock:
 mutex_unlock(&info_mutex);
 return err;
}
