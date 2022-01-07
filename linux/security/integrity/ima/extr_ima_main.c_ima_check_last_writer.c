
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int flags; int mutex; scalar_t__ measured_pcrs; int version; int atomic_flags; } ;
struct inode {int i_writecount; } ;
struct file {int f_mode; } ;
typedef int fmode_t ;


 int FMODE_WRITE ;
 int IMA_DONE_MASK ;
 int IMA_NEW_FILE ;
 int IMA_UPDATE_XATTR ;
 int IS_I_VERSION (struct inode*) ;
 int atomic_read (int *) ;
 int ima_update_xattr (struct integrity_iint_cache*,struct file*) ;
 int inode_eq_iversion (struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void ima_check_last_writer(struct integrity_iint_cache *iint,
      struct inode *inode, struct file *file)
{
 fmode_t mode = file->f_mode;
 bool update;

 if (!(mode & FMODE_WRITE))
  return;

 mutex_lock(&iint->mutex);
 if (atomic_read(&inode->i_writecount) == 1) {
  update = test_and_clear_bit(IMA_UPDATE_XATTR,
         &iint->atomic_flags);
  if (!IS_I_VERSION(inode) ||
      !inode_eq_iversion(inode, iint->version) ||
      (iint->flags & IMA_NEW_FILE)) {
   iint->flags &= ~(IMA_DONE_MASK | IMA_NEW_FILE);
   iint->measured_pcrs = 0;
   if (update)
    ima_update_xattr(iint, file);
  }
 }
 mutex_unlock(&iint->mutex);
}
