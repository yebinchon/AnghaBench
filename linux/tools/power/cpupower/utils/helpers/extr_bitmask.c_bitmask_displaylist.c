
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 unsigned int bitmask_first (struct bitmask const*) ;
 unsigned int bitmask_next (struct bitmask const*,unsigned int) ;
 int emit (char*,int,unsigned int,unsigned int,int) ;

int bitmask_displaylist(char *buf, int buflen, const struct bitmask *bmp)
{
 int len = 0;

 unsigned int cur, rbot, rtop;

 if (buflen > 0)
  *buf = 0;
 rbot = cur = bitmask_first(bmp);
 while (cur < bmp->size) {
  rtop = cur;
  cur = bitmask_next(bmp, cur+1);
  if (cur >= bmp->size || cur > rtop + 1) {
   len = emit(buf, buflen, rbot, rtop, len);
   rbot = cur;
  }
 }
 return len;
}
