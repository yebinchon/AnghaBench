
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;
struct fscache_cookie {int flags; } ;


 int __fscache_check_page_write (struct fscache_cookie*,struct page*) ;
 int * bit_waitqueue (int *,int ) ;
 int fscache_page_write_wait ;
 int trace_fscache_page (struct fscache_cookie*,struct page*,int ) ;
 int wait_event (int ,int) ;

void __fscache_wait_on_page_write(struct fscache_cookie *cookie, struct page *page)
{
 wait_queue_head_t *wq = bit_waitqueue(&cookie->flags, 0);

 trace_fscache_page(cookie, page, fscache_page_write_wait);

 wait_event(*wq, !__fscache_check_page_write(cookie, page));
}
