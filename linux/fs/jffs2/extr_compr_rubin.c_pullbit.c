
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pushpull {int* buf; int ofs; } ;



__attribute__((used)) static inline int pullbit(struct pushpull *pp)
{
 int bit;

 bit = (pp->buf[pp->ofs >> 3] >> (7-(pp->ofs & 7))) & 1;

 pp->ofs++;
 return bit;
}
