
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_file_private {int fp_mutex; } ;
struct file_lock {int dummy; } ;
struct file {struct ocfs2_file_private* private_data; } ;


 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_file_unlock (struct file*) ;

__attribute__((used)) static int ocfs2_do_funlock(struct file *file, int cmd, struct file_lock *fl)
{
 int ret;
 struct ocfs2_file_private *fp = file->private_data;

 mutex_lock(&fp->fp_mutex);
 ocfs2_file_unlock(file);
 ret = locks_lock_file_wait(file, fl);
 mutex_unlock(&fp->fp_mutex);

 return ret;
}
