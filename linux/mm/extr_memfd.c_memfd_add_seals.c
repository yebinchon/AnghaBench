
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_mapping; } ;


 int EINVAL ;
 int EPERM ;
 int FMODE_WRITE ;
 scalar_t__ F_ALL_SEALS ;
 unsigned int F_SEAL_SEAL ;
 unsigned int F_SEAL_WRITE ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mapping_allow_writable (int ) ;
 int mapping_deny_writable (int ) ;
 unsigned int* memfd_file_seals_ptr (struct file*) ;
 int memfd_wait_for_pins (int ) ;

__attribute__((used)) static int memfd_add_seals(struct file *file, unsigned int seals)
{
 struct inode *inode = file_inode(file);
 unsigned int *file_seals;
 int error;
 if (!(file->f_mode & FMODE_WRITE))
  return -EPERM;
 if (seals & ~(unsigned int)F_ALL_SEALS)
  return -EINVAL;

 inode_lock(inode);

 file_seals = memfd_file_seals_ptr(file);
 if (!file_seals) {
  error = -EINVAL;
  goto unlock;
 }

 if (*file_seals & F_SEAL_SEAL) {
  error = -EPERM;
  goto unlock;
 }

 if ((seals & F_SEAL_WRITE) && !(*file_seals & F_SEAL_WRITE)) {
  error = mapping_deny_writable(file->f_mapping);
  if (error)
   goto unlock;

  error = memfd_wait_for_pins(file->f_mapping);
  if (error) {
   mapping_allow_writable(file->f_mapping);
   goto unlock;
  }
 }

 *file_seals |= seals;
 error = 0;

unlock:
 inode_unlock(inode);
 return error;
}
