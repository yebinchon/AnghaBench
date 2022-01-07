
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __le32 ;


 scalar_t__ f2fs_has_inline_xattr (struct inode*) ;
 int get_inline_xattr_addrs (struct inode*) ;

__attribute__((used)) static inline int inline_xattr_size(struct inode *inode)
{
 if (f2fs_has_inline_xattr(inode))
  return get_inline_xattr_addrs(inode) * sizeof(__le32);
 return 0;
}
