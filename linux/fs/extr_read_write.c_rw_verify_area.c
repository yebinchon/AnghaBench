
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_flctx; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef size_t loff_t ;


 int EINVAL ;
 int EOVERFLOW ;
 int F_RDLCK ;
 int F_WRLCK ;
 int MAY_READ ;
 int MAY_WRITE ;
 int READ ;
 struct inode* file_inode (struct file*) ;
 int locks_mandatory_area (struct inode*,struct file*,size_t,size_t,int ) ;
 scalar_t__ mandatory_lock (struct inode*) ;
 int security_file_permission (struct file*,int ) ;
 scalar_t__ unlikely (int) ;
 int unsigned_offsets (struct file*) ;

int rw_verify_area(int read_write, struct file *file, const loff_t *ppos, size_t count)
{
 struct inode *inode;
 int retval = -EINVAL;

 inode = file_inode(file);
 if (unlikely((ssize_t) count < 0))
  return retval;





 if (ppos) {
  loff_t pos = *ppos;

  if (unlikely(pos < 0)) {
   if (!unsigned_offsets(file))
    return retval;
   if (count >= -pos)
    return -EOVERFLOW;
  } else if (unlikely((loff_t) (pos + count) < 0)) {
   if (!unsigned_offsets(file))
    return retval;
  }

  if (unlikely(inode->i_flctx && mandatory_lock(inode))) {
   retval = locks_mandatory_area(inode, file, pos, pos + count - 1,
     read_write == READ ? F_RDLCK : F_WRLCK);
   if (retval < 0)
    return retval;
  }
 }

 return security_file_permission(file,
    read_write == READ ? MAY_READ : MAY_WRITE);
}
