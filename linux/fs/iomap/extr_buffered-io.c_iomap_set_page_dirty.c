
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int host; } ;


 int I_DIRTY_PAGES ;
 int TestSetPageDirty (struct page*) ;
 int __mark_inode_dirty (int ,int ) ;
 int __set_page_dirty (struct page*,struct address_space*,int ) ;
 int lock_page_memcg (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page_memcg (struct page*) ;

int
iomap_set_page_dirty(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 int newly_dirty;

 if (unlikely(!mapping))
  return !TestSetPageDirty(page);





 lock_page_memcg(page);
 newly_dirty = !TestSetPageDirty(page);
 if (newly_dirty)
  __set_page_dirty(page, mapping, 0);
 unlock_page_memcg(page);

 if (newly_dirty)
  __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);
 return newly_dirty;
}
