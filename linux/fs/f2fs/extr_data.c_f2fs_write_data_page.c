
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int FS_DATA_IO ;
 int __write_data_page (struct page*,int *,int *,int *,struct writeback_control*,int ) ;

__attribute__((used)) static int f2fs_write_data_page(struct page *page,
     struct writeback_control *wbc)
{
 return __write_data_page(page, ((void*)0), ((void*)0), ((void*)0), wbc, FS_DATA_IO);
}
