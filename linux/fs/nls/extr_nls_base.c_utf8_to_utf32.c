
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unicode_t ;
typedef int u8 ;
struct utf8_table {int cmask; int cval; unsigned long lmask; unsigned long lval; } ;


 unsigned long SURROGATE_MASK ;
 unsigned long SURROGATE_PAIR ;
 unsigned long UNICODE_MAX ;
 struct utf8_table* utf8_table ;

int utf8_to_utf32(const u8 *s, int inlen, unicode_t *pu)
{
 unsigned long l;
 int c0, c, nc;
 const struct utf8_table *t;

 nc = 0;
 c0 = *s;
 l = c0;
 for (t = utf8_table; t->cmask; t++) {
  nc++;
  if ((c0 & t->cmask) == t->cval) {
   l &= t->lmask;
   if (l < t->lval || l > UNICODE_MAX ||
     (l & SURROGATE_MASK) == SURROGATE_PAIR)
    return -1;
   *pu = (unicode_t) l;
   return nc;
  }
  if (inlen <= nc)
   return -1;
  s++;
  c = (*s ^ 0x80) & 0xFF;
  if (c & 0xC0)
   return -1;
  l = (l << 6) | c;
 }
 return -1;
}
