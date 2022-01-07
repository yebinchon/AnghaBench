
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct iomap {scalar_t__ offset; scalar_t__ length; scalar_t__ addr; } ;
struct iomap_swapfile_info {int lowest_ppage; int highest_ppage; unsigned long nr_pages; int nr_extents; int sis; struct iomap iomap; } ;


 int ALIGN (scalar_t__,int ) ;
 int ALIGN_DOWN (scalar_t__,int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int add_swap_extent (int ,unsigned long,unsigned long,int) ;

__attribute__((used)) static int iomap_swapfile_add_extent(struct iomap_swapfile_info *isi)
{
 struct iomap *iomap = &isi->iomap;
 unsigned long nr_pages;
 uint64_t first_ppage;
 uint64_t first_ppage_reported;
 uint64_t next_ppage;
 int error;





 first_ppage = ALIGN(iomap->addr, PAGE_SIZE) >> PAGE_SHIFT;
 next_ppage = ALIGN_DOWN(iomap->addr + iomap->length, PAGE_SIZE) >>
   PAGE_SHIFT;


 if (first_ppage >= next_ppage)
  return 0;
 nr_pages = next_ppage - first_ppage;






 first_ppage_reported = first_ppage;
 if (iomap->offset == 0)
  first_ppage_reported++;
 if (isi->lowest_ppage > first_ppage_reported)
  isi->lowest_ppage = first_ppage_reported;
 if (isi->highest_ppage < (next_ppage - 1))
  isi->highest_ppage = next_ppage - 1;


 error = add_swap_extent(isi->sis, isi->nr_pages, nr_pages, first_ppage);
 if (error < 0)
  return error;
 isi->nr_extents += error;
 isi->nr_pages += nr_pages;
 return 0;
}
