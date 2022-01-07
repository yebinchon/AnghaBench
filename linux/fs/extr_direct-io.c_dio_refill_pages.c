
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {int tail; int to; scalar_t__ head; scalar_t__ from; int iter; scalar_t__ blocks_available; } ;
struct dio {scalar_t__ op; scalar_t__ page_errors; struct page** pages; } ;
typedef int ssize_t ;


 int DIO_PAGES ;
 int LONG_MAX ;
 int PAGE_SIZE ;
 scalar_t__ REQ_OP_WRITE ;
 struct page* ZERO_PAGE (int ) ;
 int get_page (struct page*) ;
 int iov_iter_advance (int ,int) ;
 int iov_iter_get_pages (int ,struct page**,int ,int ,scalar_t__*) ;

__attribute__((used)) static inline int dio_refill_pages(struct dio *dio, struct dio_submit *sdio)
{
 ssize_t ret;

 ret = iov_iter_get_pages(sdio->iter, dio->pages, LONG_MAX, DIO_PAGES,
    &sdio->from);

 if (ret < 0 && sdio->blocks_available && (dio->op == REQ_OP_WRITE)) {
  struct page *page = ZERO_PAGE(0);





  if (dio->page_errors == 0)
   dio->page_errors = ret;
  get_page(page);
  dio->pages[0] = page;
  sdio->head = 0;
  sdio->tail = 1;
  sdio->from = 0;
  sdio->to = PAGE_SIZE;
  return 0;
 }

 if (ret >= 0) {
  iov_iter_advance(sdio->iter, ret);
  ret += sdio->from;
  sdio->head = 0;
  sdio->tail = (ret + PAGE_SIZE - 1) / PAGE_SIZE;
  sdio->to = ((ret - 1) & (PAGE_SIZE - 1)) + 1;
  return 0;
 }
 return ret;
}
