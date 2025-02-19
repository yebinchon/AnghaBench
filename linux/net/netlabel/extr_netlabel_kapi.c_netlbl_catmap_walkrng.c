
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netlbl_lsm_catmap {scalar_t__ startbit; int* bitmap; struct netlbl_lsm_catmap* next; } ;
typedef int NETLBL_CATMAP_MAPTYPE ;


 int ENOENT ;
 scalar_t__ NETLBL_CATMAP_BIT ;
 scalar_t__ NETLBL_CATMAP_MAPCNT ;
 scalar_t__ NETLBL_CATMAP_MAPSIZE ;
 int NETLBL_CATMAP_SIZE ;
 int _CM_F_WALK ;
 struct netlbl_lsm_catmap* _netlbl_catmap_getnode (struct netlbl_lsm_catmap**,scalar_t__,int ,int ) ;

int netlbl_catmap_walkrng(struct netlbl_lsm_catmap *catmap, u32 offset)
{
 struct netlbl_lsm_catmap *iter;
 struct netlbl_lsm_catmap *prev = ((void*)0);
 u32 idx;
 u32 bit;
 NETLBL_CATMAP_MAPTYPE bitmask;
 NETLBL_CATMAP_MAPTYPE bitmap;

 iter = _netlbl_catmap_getnode(&catmap, offset, _CM_F_WALK, 0);
 if (iter == ((void*)0))
  return -ENOENT;
 if (offset > iter->startbit) {
  offset -= iter->startbit;
  idx = offset / NETLBL_CATMAP_MAPSIZE;
  bit = offset % NETLBL_CATMAP_MAPSIZE;
 } else {
  idx = 0;
  bit = 0;
 }
 bitmask = NETLBL_CATMAP_BIT << bit;

 for (;;) {
  bitmap = iter->bitmap[idx];
  while (bitmask != 0 && (bitmap & bitmask) != 0) {
   bitmask <<= 1;
   bit++;
  }

  if (prev && idx == 0 && bit == 0)
   return prev->startbit + NETLBL_CATMAP_SIZE - 1;
  else if (bitmask != 0)
   return iter->startbit +
    (NETLBL_CATMAP_MAPSIZE * idx) + bit - 1;
  else if (++idx >= NETLBL_CATMAP_MAPCNT) {
   if (iter->next == ((void*)0))
    return iter->startbit + NETLBL_CATMAP_SIZE - 1;
   prev = iter;
   iter = iter->next;
   idx = 0;
  }
  bitmask = NETLBL_CATMAP_BIT;
  bit = 0;
 }

 return -ENOENT;
}
