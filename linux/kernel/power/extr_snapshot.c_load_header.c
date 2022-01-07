
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swsusp_info {scalar_t__ image_pages; scalar_t__ pages; } ;


 int check_header (struct swsusp_info*) ;
 scalar_t__ nr_copy_pages ;
 scalar_t__ nr_meta_pages ;
 int * restore_pblist ;

__attribute__((used)) static int load_header(struct swsusp_info *info)
{
 int error;

 restore_pblist = ((void*)0);
 error = check_header(info);
 if (!error) {
  nr_copy_pages = info->image_pages;
  nr_meta_pages = info->pages - info->image_pages - 1;
 }
 return error;
}
