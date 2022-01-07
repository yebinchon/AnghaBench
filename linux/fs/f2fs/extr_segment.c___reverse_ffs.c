
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long __reverse_ffs(unsigned long word)
{
 int num = 0;







 if ((word & 0xffff0000) == 0)
  num += 16;
 else
  word >>= 16;

 if ((word & 0xff00) == 0)
  num += 8;
 else
  word >>= 8;

 if ((word & 0xf0) == 0)
  num += 4;
 else
  word >>= 4;

 if ((word & 0xc) == 0)
  num += 2;
 else
  word >>= 2;

 if ((word & 0x2) == 0)
  num += 1;
 return num;
}
