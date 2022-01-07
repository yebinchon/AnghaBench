
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {scalar_t__ head; scalar_t__ tail; } ;
struct dio {int * pages; } ;


 int put_page (int ) ;

__attribute__((used)) static inline void dio_cleanup(struct dio *dio, struct dio_submit *sdio)
{
 while (sdio->head < sdio->tail)
  put_page(dio->pages[sdio->head++]);
}
