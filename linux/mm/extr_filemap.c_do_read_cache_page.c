
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int pgoff_t ;
typedef int gfp_t ;
struct TYPE_2__ {int (* readpage ) (void*,struct page*) ;} ;


 int EEXIST ;
 int ENOMEM ;
 struct page* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 struct page* __page_cache_alloc (int ) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int lock_page (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (void*,struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_locked (struct page*) ;
 struct page* wait_on_page_read (struct page*) ;

__attribute__((used)) static struct page *do_read_cache_page(struct address_space *mapping,
    pgoff_t index,
    int (*filler)(void *, struct page *),
    void *data,
    gfp_t gfp)
{
 struct page *page;
 int err;
repeat:
 page = find_get_page(mapping, index);
 if (!page) {
  page = __page_cache_alloc(gfp);
  if (!page)
   return ERR_PTR(-ENOMEM);
  err = add_to_page_cache_lru(page, mapping, index, gfp);
  if (unlikely(err)) {
   put_page(page);
   if (err == -EEXIST)
    goto repeat;

   return ERR_PTR(err);
  }

filler:
  if (filler)
   err = filler(data, page);
  else
   err = mapping->a_ops->readpage(data, page);

  if (err < 0) {
   put_page(page);
   return ERR_PTR(err);
  }

  page = wait_on_page_read(page);
  if (IS_ERR(page))
   return page;
  goto out;
 }
 if (PageUptodate(page))
  goto out;
 wait_on_page_locked(page);
 if (PageUptodate(page))
  goto out;


 lock_page(page);


 if (!page->mapping) {
  unlock_page(page);
  put_page(page);
  goto repeat;
 }


 if (PageUptodate(page)) {
  unlock_page(page);
  goto out;
 }
 goto filler;

out:
 mark_page_accessed(page);
 return page;
}
