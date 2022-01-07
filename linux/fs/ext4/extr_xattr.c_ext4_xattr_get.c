
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int xattr_sem; } ;


 int EIO ;
 int ENODATA ;
 int ERANGE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_SB (int ) ;
 int down_read (int *) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_xattr_block_get (struct inode*,int,char const*,void*,size_t) ;
 int ext4_xattr_ibody_get (struct inode*,int,char const*,void*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 int up_read (int *) ;

int
ext4_xattr_get(struct inode *inode, int name_index, const char *name,
        void *buffer, size_t buffer_size)
{
 int error;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 if (strlen(name) > 255)
  return -ERANGE;

 down_read(&EXT4_I(inode)->xattr_sem);
 error = ext4_xattr_ibody_get(inode, name_index, name, buffer,
         buffer_size);
 if (error == -ENODATA)
  error = ext4_xattr_block_get(inode, name_index, name, buffer,
          buffer_size);
 up_read(&EXT4_I(inode)->xattr_sem);
 return error;
}
