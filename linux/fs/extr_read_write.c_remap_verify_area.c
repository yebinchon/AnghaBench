
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_flctx; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int F_RDLCK ;
 int F_WRLCK ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ OFFSET_MAX ;
 struct inode* file_inode (struct file*) ;
 int locks_mandatory_area (struct inode*,struct file*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ mandatory_lock (struct inode*) ;
 int security_file_permission (struct file*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int remap_verify_area(struct file *file, loff_t pos, loff_t len,
        bool write)
{
 struct inode *inode = file_inode(file);

 if (unlikely(pos < 0 || len < 0))
  return -EINVAL;

  if (unlikely((loff_t) (pos + len) < 0))
  return -EINVAL;

 if (unlikely(inode->i_flctx && mandatory_lock(inode))) {
  loff_t end = len ? pos + len - 1 : OFFSET_MAX;
  int retval;

  retval = locks_mandatory_area(inode, file, pos, end,
    write ? F_WRLCK : F_RDLCK);
  if (retval < 0)
   return retval;
 }

 return security_file_permission(file, write ? MAY_WRITE : MAY_READ);
}
