
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_READ ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int event_trigger_regex_release(struct inode *inode, struct file *file)
{
 mutex_lock(&event_mutex);

 if (file->f_mode & FMODE_READ)
  seq_release(inode, file);

 mutex_unlock(&event_mutex);

 return 0;
}
