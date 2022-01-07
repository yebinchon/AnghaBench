
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGES_FOR_IO ;
 unsigned int count_swap_pages (int ,int) ;
 int pr_debug (char*,unsigned int) ;
 int root_swap ;

__attribute__((used)) static int enough_swap(unsigned int nr_pages)
{
 unsigned int free_swap = count_swap_pages(root_swap, 1);
 unsigned int required;

 pr_debug("Free swap pages: %u\n", free_swap);

 required = PAGES_FOR_IO + nr_pages;
 return free_swap > required;
}
