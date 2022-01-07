
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int FS_NODE_IO ;
 int __write_node_page (struct page*,int,int *,struct writeback_control*,int,int ,int *) ;

__attribute__((used)) static int f2fs_write_node_page(struct page *page,
    struct writeback_control *wbc)
{
 return __write_node_page(page, 0, ((void*)0), wbc, 0,
      FS_NODE_IO, ((void*)0));
}
