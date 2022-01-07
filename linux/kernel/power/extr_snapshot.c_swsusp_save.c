
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned int,int ) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int copy_bm ;
 int copy_data_pages (int *,int *) ;
 unsigned int count_data_pages () ;
 unsigned int count_highmem_pages () ;
 int drain_local_pages (int *) ;
 int enough_free_mem (unsigned int,unsigned int) ;
 unsigned int nr_copy_pages ;
 int nr_meta_pages ;
 int orig_bm ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 scalar_t__ swsusp_alloc (int *,unsigned int,unsigned int) ;

int swsusp_save(void)
{
 unsigned int nr_pages, nr_highmem;

 pr_info("Creating hibernation image:\n");

 drain_local_pages(((void*)0));
 nr_pages = count_data_pages();
 nr_highmem = count_highmem_pages();
 pr_info("Need to copy %u pages\n", nr_pages + nr_highmem);

 if (!enough_free_mem(nr_pages, nr_highmem)) {
  pr_err("Not enough free memory\n");
  return -ENOMEM;
 }

 if (swsusp_alloc(&copy_bm, nr_pages, nr_highmem)) {
  pr_err("Memory allocation failed\n");
  return -ENOMEM;
 }





 drain_local_pages(((void*)0));
 copy_data_pages(&copy_bm, &orig_bm);







 nr_pages += nr_highmem;
 nr_copy_pages = nr_pages;
 nr_meta_pages = DIV_ROUND_UP(nr_pages * sizeof(long), PAGE_SIZE);

 pr_info("Hibernation image created (%d pages copied)\n", nr_pages);

 return 0;
}
