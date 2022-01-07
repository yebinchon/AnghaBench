
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int READ_ONCE (int ) ;
 unsigned int __swapin_nr_pages (unsigned long,unsigned long,unsigned int,unsigned int,int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,unsigned int) ;
 unsigned int atomic_xchg (int *,int ) ;
 int page_cluster ;
 int swapin_readahead_hits ;

__attribute__((used)) static unsigned long swapin_nr_pages(unsigned long offset)
{
 static unsigned long prev_offset;
 unsigned int hits, pages, max_pages;
 static atomic_t last_readahead_pages;

 max_pages = 1 << READ_ONCE(page_cluster);
 if (max_pages <= 1)
  return 1;

 hits = atomic_xchg(&swapin_readahead_hits, 0);
 pages = __swapin_nr_pages(prev_offset, offset, hits, max_pages,
      atomic_read(&last_readahead_pages));
 if (!hits)
  prev_offset = offset;
 atomic_set(&last_readahead_pages, pages);

 return pages;
}
