
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ubifs_inode {int flags; int ui_size; int xattr_size; int ui_mutex; } ;
struct path {int dentry; } ;
struct kstat {int attributes; int attributes_mask; int size; int blocks; int blksize; } ;
struct inode {int i_mode; } ;
typedef int loff_t ;


 int ALIGN (int,int ) ;
 int STATX_ATTR_APPEND ;
 int STATX_ATTR_COMPRESSED ;
 int STATX_ATTR_ENCRYPTED ;
 int STATX_ATTR_IMMUTABLE ;
 scalar_t__ S_ISREG (int ) ;
 int UBIFS_APPEND_FL ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_COMPR_FL ;
 int UBIFS_CRYPT_FL ;
 int UBIFS_IMMUTABLE_FL ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

int ubifs_getattr(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int flags)
{
 loff_t size;
 struct inode *inode = d_inode(path->dentry);
 struct ubifs_inode *ui = ubifs_inode(inode);

 mutex_lock(&ui->ui_mutex);

 if (ui->flags & UBIFS_APPEND_FL)
  stat->attributes |= STATX_ATTR_APPEND;
 if (ui->flags & UBIFS_COMPR_FL)
  stat->attributes |= STATX_ATTR_COMPRESSED;
 if (ui->flags & UBIFS_CRYPT_FL)
  stat->attributes |= STATX_ATTR_ENCRYPTED;
 if (ui->flags & UBIFS_IMMUTABLE_FL)
  stat->attributes |= STATX_ATTR_IMMUTABLE;

 stat->attributes_mask |= (STATX_ATTR_APPEND |
    STATX_ATTR_COMPRESSED |
    STATX_ATTR_ENCRYPTED |
    STATX_ATTR_IMMUTABLE);

 generic_fillattr(inode, stat);
 stat->blksize = UBIFS_BLOCK_SIZE;
 stat->size = ui->ui_size;
 if (S_ISREG(inode->i_mode)) {
  size = ui->xattr_size;
  size += stat->size;
  size = ALIGN(size, UBIFS_BLOCK_SIZE);




  stat->blocks = size >> 9;
 } else
  stat->blocks = 0;
 mutex_unlock(&ui->ui_mutex);
 return 0;
}
