
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int fasync; } ;
struct inode {int dummy; } ;
struct file {struct perf_event* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int perf_fasync(int fd, struct file *filp, int on)
{
 struct inode *inode = file_inode(filp);
 struct perf_event *event = filp->private_data;
 int retval;

 inode_lock(inode);
 retval = fasync_helper(fd, filp, on, &event->fasync);
 inode_unlock(inode);

 if (retval < 0)
  return retval;

 return 0;
}
