
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_node {int dummy; } ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int RAW_IS_INODE (struct f2fs_node*) ;

__attribute__((used)) static inline bool IS_INODE(struct page *page)
{
 struct f2fs_node *p = F2FS_NODE(page);

 return RAW_IS_INODE(p);
}
