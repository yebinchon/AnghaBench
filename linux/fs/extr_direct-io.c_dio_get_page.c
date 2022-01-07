
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {size_t head; } ;
struct dio {struct page** pages; } ;


 int BUG_ON (int) ;
 struct page* ERR_PTR (int) ;
 scalar_t__ dio_pages_present (struct dio_submit*) ;
 int dio_refill_pages (struct dio*,struct dio_submit*) ;

__attribute__((used)) static inline struct page *dio_get_page(struct dio *dio,
     struct dio_submit *sdio)
{
 if (dio_pages_present(sdio) == 0) {
  int ret;

  ret = dio_refill_pages(dio, sdio);
  if (ret)
   return ERR_PTR(ret);
  BUG_ON(dio_pages_present(sdio) == 0);
 }
 return dio->pages[sdio->head];
}
