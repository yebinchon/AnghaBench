
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {scalar_t__ ima_file_status; int flags; int atomic_flags; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int IMA_DIGSIG ;
 int IMA_HASH ;
 scalar_t__ INTEGRITY_PASS ;
 struct dentry* file_dentry (struct file*) ;
 int file_inode (struct file*) ;
 int ima_collect_measurement (struct integrity_iint_cache*,struct file*,int *,int ,int ,int *) ;
 int ima_fix_xattr (struct dentry*,struct integrity_iint_cache*) ;
 int ima_hash_algo ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ima_update_xattr(struct integrity_iint_cache *iint, struct file *file)
{
 struct dentry *dentry = file_dentry(file);
 int rc = 0;


 if (test_bit(IMA_DIGSIG, &iint->atomic_flags))
  return;

 if ((iint->ima_file_status != INTEGRITY_PASS) &&
     !(iint->flags & IMA_HASH))
  return;

 rc = ima_collect_measurement(iint, file, ((void*)0), 0, ima_hash_algo, ((void*)0));
 if (rc < 0)
  return;

 inode_lock(file_inode(file));
 ima_fix_xattr(dentry, iint);
 inode_unlock(file_inode(file));
}
