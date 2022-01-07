
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int tail; int head; } ;



__attribute__((used)) static inline unsigned dio_pages_present(struct dio_submit *sdio)
{
 return sdio->tail - sdio->head;
}
