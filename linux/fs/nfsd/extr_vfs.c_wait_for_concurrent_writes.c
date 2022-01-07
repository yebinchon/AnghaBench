
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_state; TYPE_1__* i_sb; int i_writecount; } ;
struct file {int dummy; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
struct TYPE_2__ {scalar_t__ s_dev; } ;


 int I_DIRTY ;
 int atomic_read (int *) ;
 int current ;
 int dprintk (char*,int ) ;
 struct inode* file_inode (struct file*) ;
 int msleep (int) ;
 int task_pid_nr (int ) ;
 int vfs_fsync (struct file*,int ) ;

__attribute__((used)) static int wait_for_concurrent_writes(struct file *file)
{
 struct inode *inode = file_inode(file);
 static ino_t last_ino;
 static dev_t last_dev;
 int err = 0;

 if (atomic_read(&inode->i_writecount) > 1
     || (last_ino == inode->i_ino && last_dev == inode->i_sb->s_dev)) {
  dprintk("nfsd: write defer %d\n", task_pid_nr(current));
  msleep(10);
  dprintk("nfsd: write resume %d\n", task_pid_nr(current));
 }

 if (inode->i_state & I_DIRTY) {
  dprintk("nfsd: write sync %d\n", task_pid_nr(current));
  err = vfs_fsync(file, 0);
 }
 last_ino = inode->i_ino;
 last_dev = inode->i_sb->s_dev;
 return err;
}
