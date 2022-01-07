
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umh_info {int list; } ;
struct subprocess_info {int dummy; } ;
struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int UMH_WAIT_EXEC ;
 int call_usermodehelper_exec (struct subprocess_info*,int ) ;
 struct subprocess_info* call_usermodehelper_setup_file (struct file*,int ,int ,struct umh_info*) ;
 int fput (struct file*) ;
 size_t kernel_write (struct file*,void*,size_t,int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct file* shmem_kernel_file_setup (char*,size_t,int ) ;
 int umh_clean_and_save_pid ;
 int umh_list ;
 int umh_list_lock ;
 int umh_pipe_setup ;

int fork_usermode_blob(void *data, size_t len, struct umh_info *info)
{
 struct subprocess_info *sub_info;
 struct file *file;
 ssize_t written;
 loff_t pos = 0;
 int err;

 file = shmem_kernel_file_setup("", len, 0);
 if (IS_ERR(file))
  return PTR_ERR(file);

 written = kernel_write(file, data, len, &pos);
 if (written != len) {
  err = written;
  if (err >= 0)
   err = -ENOMEM;
  goto out;
 }

 err = -ENOMEM;
 sub_info = call_usermodehelper_setup_file(file, umh_pipe_setup,
        umh_clean_and_save_pid, info);
 if (!sub_info)
  goto out;

 err = call_usermodehelper_exec(sub_info, UMH_WAIT_EXEC);
 if (!err) {
  mutex_lock(&umh_list_lock);
  list_add(&info->list, &umh_list);
  mutex_unlock(&umh_list_lock);
 }
out:
 fput(file);
 return err;
}
