
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swsusp_info {int size; int pages; int image_pages; int num_physpages; } ;


 int PAGE_SHIFT ;
 int get_num_physpages () ;
 int init_header_complete (struct swsusp_info*) ;
 int memset (struct swsusp_info*,int ,int) ;
 int nr_copy_pages ;
 int snapshot_get_image_size () ;

__attribute__((used)) static int init_header(struct swsusp_info *info)
{
 memset(info, 0, sizeof(struct swsusp_info));
 info->num_physpages = get_num_physpages();
 info->image_pages = nr_copy_pages;
 info->pages = snapshot_get_image_size();
 info->size = info->pages;
 info->size <<= PAGE_SHIFT;
 return init_header_complete(info);
}
