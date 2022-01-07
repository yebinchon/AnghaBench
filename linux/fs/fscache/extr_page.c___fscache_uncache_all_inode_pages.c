
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct fscache_cookie {int dummy; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ PageFsCache (struct page*) ;
 int __fscache_uncache_page (struct fscache_cookie*,struct page*) ;
 int __fscache_wait_on_page_write (struct fscache_cookie*,struct page*) ;
 int _enter (char*,struct fscache_cookie*,struct inode*) ;
 int _leave (char*) ;
 int cond_resched () ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup (struct pagevec*,struct address_space*,scalar_t__*) ;
 int pagevec_release (struct pagevec*) ;

void __fscache_uncache_all_inode_pages(struct fscache_cookie *cookie,
           struct inode *inode)
{
 struct address_space *mapping = inode->i_mapping;
 struct pagevec pvec;
 pgoff_t next;
 int i;

 _enter("%p,%p", cookie, inode);

 if (!mapping || mapping->nrpages == 0) {
  _leave(" [no pages]");
  return;
 }

 pagevec_init(&pvec);
 next = 0;
 do {
  if (!pagevec_lookup(&pvec, mapping, &next))
   break;
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];
   if (PageFsCache(page)) {
    __fscache_wait_on_page_write(cookie, page);
    __fscache_uncache_page(cookie, page);
   }
  }
  pagevec_release(&pvec);
  cond_resched();
 } while (next);

 _leave("");
}
