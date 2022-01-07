
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;
struct fscache_cookie {int flags; } ;


 int HZ ;
 int __fscache_check_page_write (struct fscache_cookie*,struct page*) ;
 int * bit_waitqueue (int *,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static
bool release_page_wait_timeout(struct fscache_cookie *cookie, struct page *page)
{
 wait_queue_head_t *wq = bit_waitqueue(&cookie->flags, 0);

 return wait_event_timeout(*wq, !__fscache_check_page_write(cookie, page),
      HZ);
}
