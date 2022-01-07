
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (int ) ;
 int d_inode (struct dentry*) ;
 int down_read (int *) ;
 int ext4_xattr_block_list (struct dentry*,char*,size_t) ;
 int ext4_xattr_ibody_list (struct dentry*,char*,size_t) ;
 int up_read (int *) ;

ssize_t
ext4_listxattr(struct dentry *dentry, char *buffer, size_t buffer_size)
{
 int ret, ret2;

 down_read(&EXT4_I(d_inode(dentry))->xattr_sem);
 ret = ret2 = ext4_xattr_ibody_list(dentry, buffer, buffer_size);
 if (ret < 0)
  goto errout;
 if (buffer) {
  buffer += ret;
  buffer_size -= ret;
 }
 ret = ext4_xattr_block_list(dentry, buffer, buffer_size);
 if (ret < 0)
  goto errout;
 ret += ret2;
errout:
 up_read(&EXT4_I(d_inode(dentry))->xattr_sem);
 return ret;
}
