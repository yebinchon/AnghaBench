
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_node {int dummy; } ;


 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static inline struct f2fs_node *F2FS_NODE(struct page *page)
{
 return (struct f2fs_node *)page_address(page);
}
