
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int PAGECACHE_TAG_DIRTY ;
 int SEEK_DATA ;
 int ULONG_MAX ;
 int find_get_pages_tag (struct address_space*,int *,int ,int,struct page**) ;
 int put_page (struct page*) ;

__attribute__((used)) static pgoff_t __get_first_dirty_index(struct address_space *mapping,
      pgoff_t pgofs, int whence)
{
 struct page *page;
 int nr_pages;

 if (whence != SEEK_DATA)
  return 0;


 nr_pages = find_get_pages_tag(mapping, &pgofs, PAGECACHE_TAG_DIRTY,
          1, &page);
 if (!nr_pages)
  return ULONG_MAX;
 pgofs = page->index;
 put_page(page);
 return pgofs;
}
