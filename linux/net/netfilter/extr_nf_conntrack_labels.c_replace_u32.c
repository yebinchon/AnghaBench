
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cmpxchg (int*,int,int) ;

__attribute__((used)) static int replace_u32(u32 *address, u32 mask, u32 new)
{
 u32 old, tmp;

 do {
  old = *address;
  tmp = (old & mask) ^ new;
  if (old == tmp)
   return 0;
 } while (cmpxchg(address, old, tmp) != old);

 return 1;
}
