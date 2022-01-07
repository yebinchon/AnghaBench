
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int FS_META_IO ;
 int __f2fs_write_meta_page (struct page*,struct writeback_control*,int ) ;

__attribute__((used)) static int f2fs_write_meta_page(struct page *page,
    struct writeback_control *wbc)
{
 return __f2fs_write_meta_page(page, wbc, FS_META_IO);
}
