
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageError (struct page*) ;
 int mapping_set_error (int ,int) ;
 int page_file_mapping (struct page*) ;

__attribute__((used)) static void nfs_mapping_set_error(struct page *page, int error)
{
 SetPageError(page);
 mapping_set_error(page_file_mapping(page), error);
}
