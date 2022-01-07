
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int files; int readers; int writers; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_state; int * i_fop; struct pipe_inode_info* i_pipe; int i_ino; } ;
struct TYPE_2__ {int mnt_sb; } ;


 int I_DIRTY ;
 int S_IFIFO ;
 int S_IRUSR ;
 int S_IWUSR ;
 struct pipe_inode_info* alloc_pipe_info () ;
 int current_fsgid () ;
 int current_fsuid () ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 int iput (struct inode*) ;
 struct inode* new_inode_pseudo (int ) ;
 TYPE_1__* pipe_mnt ;
 int pipefifo_fops ;

__attribute__((used)) static struct inode * get_pipe_inode(void)
{
 struct inode *inode = new_inode_pseudo(pipe_mnt->mnt_sb);
 struct pipe_inode_info *pipe;

 if (!inode)
  goto fail_inode;

 inode->i_ino = get_next_ino();

 pipe = alloc_pipe_info();
 if (!pipe)
  goto fail_iput;

 inode->i_pipe = pipe;
 pipe->files = 2;
 pipe->readers = pipe->writers = 1;
 inode->i_fop = &pipefifo_fops;







 inode->i_state = I_DIRTY;
 inode->i_mode = S_IFIFO | S_IRUSR | S_IWUSR;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);

 return inode;

fail_iput:
 iput(inode);

fail_inode:
 return ((void*)0);
}
