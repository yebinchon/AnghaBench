
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;


 int FMODE_WRITE ;
 int O_TRUNC ;
 int dyn_event_seq_op ;
 int dyn_events_release_all (int *) ;
 int seq_open (struct file*,int *) ;
 int tracing_check_open_get_tr (int *) ;

__attribute__((used)) static int dyn_event_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = tracing_check_open_get_tr(((void*)0));
 if (ret)
  return ret;

 if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
  ret = dyn_events_release_all(((void*)0));
  if (ret < 0)
   return ret;
 }

 return seq_open(file, &dyn_event_seq_op);
}
