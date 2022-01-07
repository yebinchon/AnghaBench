
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_inode {int i_inline; } ;


 int F2FS_DATA_EXIST ;
 int F2FS_EXTRA_ATTR ;
 int F2FS_INLINE_DATA ;
 int F2FS_INLINE_DENTRY ;
 int F2FS_INLINE_DOTS ;
 int F2FS_INLINE_XATTR ;
 int F2FS_PIN_FILE ;
 int FI_DATA_EXIST ;
 int FI_EXTRA_ATTR ;
 int FI_INLINE_DATA ;
 int FI_INLINE_DENTRY ;
 int FI_INLINE_DOTS ;
 int FI_INLINE_XATTR ;
 int FI_PIN_FILE ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;

__attribute__((used)) static inline void set_raw_inline(struct inode *inode, struct f2fs_inode *ri)
{
 ri->i_inline = 0;

 if (is_inode_flag_set(inode, FI_INLINE_XATTR))
  ri->i_inline |= F2FS_INLINE_XATTR;
 if (is_inode_flag_set(inode, FI_INLINE_DATA))
  ri->i_inline |= F2FS_INLINE_DATA;
 if (is_inode_flag_set(inode, FI_INLINE_DENTRY))
  ri->i_inline |= F2FS_INLINE_DENTRY;
 if (is_inode_flag_set(inode, FI_DATA_EXIST))
  ri->i_inline |= F2FS_DATA_EXIST;
 if (is_inode_flag_set(inode, FI_INLINE_DOTS))
  ri->i_inline |= F2FS_INLINE_DOTS;
 if (is_inode_flag_set(inode, FI_EXTRA_ATTR))
  ri->i_inline |= F2FS_EXTRA_ATTR;
 if (is_inode_flag_set(inode, FI_PIN_FILE))
  ri->i_inline |= F2FS_PIN_FILE;
}
