
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int dummy; } ;


 int TNUM (int ,int) ;
 struct tnum tnum_add (struct tnum,int ) ;

__attribute__((used)) static struct tnum hma(struct tnum acc, u64 value, u64 mask)
{
 while (mask) {
  if (mask & 1)
   acc = tnum_add(acc, TNUM(0, value));
  mask >>= 1;
  value <<= 1;
 }
 return acc;
}
