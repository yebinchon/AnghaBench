
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {unsigned int i_mode; int i_gid; int i_uid; } ;
typedef int fmode_t ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 unsigned int S_IFLNK ;
 unsigned int S_IRUSR ;
 scalar_t__ S_ISLNK (unsigned int) ;
 unsigned int S_IWUSR ;
 unsigned int S_IXUSR ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 int task_dump_owner (struct task_struct*,int ,int *,int *) ;

__attribute__((used)) static void tid_fd_update_inode(struct task_struct *task, struct inode *inode,
    fmode_t f_mode)
{
 task_dump_owner(task, 0, &inode->i_uid, &inode->i_gid);

 if (S_ISLNK(inode->i_mode)) {
  unsigned i_mode = S_IFLNK;
  if (f_mode & FMODE_READ)
   i_mode |= S_IRUSR | S_IXUSR;
  if (f_mode & FMODE_WRITE)
   i_mode |= S_IWUSR | S_IXUSR;
  inode->i_mode = i_mode;
 }
 security_task_to_inode(task, inode);
}
