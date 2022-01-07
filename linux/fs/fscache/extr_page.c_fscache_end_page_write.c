
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct fscache_object {int lock; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int flags; int stores_lock; int stores; } ;


 int FSCACHE_COOKIE_PENDING_TAG ;
 int FSCACHE_COOKIE_STORING_TAG ;
 int fscache_n_store_radix_deletes ;
 int fscache_page_radix_clear_store ;
 int fscache_page_radix_delete ;
 int fscache_page_write_end ;
 int fscache_page_write_end_noc ;
 int fscache_page_write_end_pend ;
 int fscache_stat (int *) ;
 int put_page (struct page*) ;
 struct page* radix_tree_delete (int *,int ) ;
 struct page* radix_tree_lookup (int *,int ) ;
 int radix_tree_tag_clear (int *,int ,int ) ;
 int radix_tree_tag_get (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_fscache_check_page (struct fscache_cookie*,struct page*,struct page*,int) ;
 int trace_fscache_page (struct fscache_cookie*,struct page*,int ) ;
 int trace_fscache_wake_cookie (struct fscache_cookie*) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void fscache_end_page_write(struct fscache_object *object,
       struct page *page)
{
 struct fscache_cookie *cookie;
 struct page *xpage = ((void*)0), *val;

 spin_lock(&object->lock);
 cookie = object->cookie;
 if (cookie) {


  spin_lock(&cookie->stores_lock);
  radix_tree_tag_clear(&cookie->stores, page->index,
         FSCACHE_COOKIE_STORING_TAG);
  trace_fscache_page(cookie, page, fscache_page_radix_clear_store);
  if (!radix_tree_tag_get(&cookie->stores, page->index,
     FSCACHE_COOKIE_PENDING_TAG)) {
   fscache_stat(&fscache_n_store_radix_deletes);
   xpage = radix_tree_delete(&cookie->stores, page->index);
   trace_fscache_page(cookie, page, fscache_page_radix_delete);
   trace_fscache_page(cookie, page, fscache_page_write_end);

   val = radix_tree_lookup(&cookie->stores, page->index);
   trace_fscache_check_page(cookie, page, val, 1);
  } else {
   trace_fscache_page(cookie, page, fscache_page_write_end_pend);
  }
  spin_unlock(&cookie->stores_lock);
  wake_up_bit(&cookie->flags, 0);
  trace_fscache_wake_cookie(cookie);
 } else {
  trace_fscache_page(cookie, page, fscache_page_write_end_noc);
 }
 spin_unlock(&object->lock);
 if (xpage)
  put_page(xpage);
}
