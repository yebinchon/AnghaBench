
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_inode {int * i_addr; } ;


 int DEF_INLINE_RESERVED_SIZE ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 int get_extra_isize (struct inode*) ;

__attribute__((used)) static inline void *inline_data_addr(struct inode *inode, struct page *page)
{
 struct f2fs_inode *ri = F2FS_INODE(page);
 int extra_size = get_extra_isize(inode);

 return (void *)&(ri->i_addr[extra_size + DEF_INLINE_RESERVED_SIZE]);
}
