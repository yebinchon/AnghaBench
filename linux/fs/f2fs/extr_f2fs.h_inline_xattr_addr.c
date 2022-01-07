
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_inode {int * i_addr; } ;


 size_t DEF_ADDRS_PER_INODE ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 size_t get_inline_xattr_addrs (struct inode*) ;

__attribute__((used)) static inline void *inline_xattr_addr(struct inode *inode, struct page *page)
{
 struct f2fs_inode *ri = F2FS_INODE(page);

 return (void *)&(ri->i_addr[DEF_ADDRS_PER_INODE -
     get_inline_xattr_addrs(inode)]);
}
