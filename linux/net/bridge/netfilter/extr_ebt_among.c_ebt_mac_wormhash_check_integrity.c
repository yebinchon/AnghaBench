
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_mac_wormhash {scalar_t__* table; scalar_t__ poolsize; } ;



__attribute__((used)) static int ebt_mac_wormhash_check_integrity(const struct ebt_mac_wormhash
         *wh)
{
 int i;

 for (i = 0; i < 256; i++) {
  if (wh->table[i] > wh->table[i + 1])
   return -0x100 - i;
  if (wh->table[i] < 0)
   return -0x200 - i;
  if (wh->table[i] > wh->poolsize)
   return -0x300 - i;
 }
 if (wh->table[256] > wh->poolsize)
  return -0xc00;
 return 0;
}
