
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swap (unsigned char,unsigned char) ;

__attribute__((used)) static void memswap(void *a, void *b, size_t len)
{
 unsigned char *ap, *bp;

 ap = (unsigned char *)a;
 bp = (unsigned char *)b;
 while (len-- > 0) {
  swap(*ap, *bp);
  ap++;
  bp++;
 }
}
