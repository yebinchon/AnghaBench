
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int __swapin_nr_pages(unsigned long prev_offset,
          unsigned long offset,
          int hits,
          int max_pages,
          int prev_win)
{
 unsigned int pages, last_ra;






 pages = hits + 2;
 if (pages == 2) {





  if (offset != prev_offset + 1 && offset != prev_offset - 1)
   pages = 1;
 } else {
  unsigned int roundup = 4;
  while (roundup < pages)
   roundup <<= 1;
  pages = roundup;
 }

 if (pages > max_pages)
  pages = max_pages;


 last_ra = prev_win / 2;
 if (pages < last_ra)
  pages = last_ra;

 return pages;
}
