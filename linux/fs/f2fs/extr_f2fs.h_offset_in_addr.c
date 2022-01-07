
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_inode {int i_inline; int i_extra_isize; } ;
typedef int __le32 ;


 int F2FS_EXTRA_ATTR ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int offset_in_addr(struct f2fs_inode *i)
{
 return (i->i_inline & F2FS_EXTRA_ATTR) ?
   (le16_to_cpu(i->i_extra_isize) / sizeof(__le32)) : 0;
}
