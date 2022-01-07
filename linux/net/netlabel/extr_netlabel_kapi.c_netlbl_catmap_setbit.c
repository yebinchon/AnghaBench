
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct netlbl_lsm_catmap {size_t* bitmap; scalar_t__ startbit; } ;
typedef int gfp_t ;


 int ENOMEM ;
 size_t NETLBL_CATMAP_BIT ;
 size_t NETLBL_CATMAP_MAPSIZE ;
 int _CM_F_ALLOC ;
 struct netlbl_lsm_catmap* _netlbl_catmap_getnode (struct netlbl_lsm_catmap**,size_t,int ,int ) ;

int netlbl_catmap_setbit(struct netlbl_lsm_catmap **catmap,
    u32 bit,
    gfp_t flags)
{
 struct netlbl_lsm_catmap *iter;
 u32 idx;

 iter = _netlbl_catmap_getnode(catmap, bit, _CM_F_ALLOC, flags);
 if (iter == ((void*)0))
  return -ENOMEM;

 bit -= iter->startbit;
 idx = bit / NETLBL_CATMAP_MAPSIZE;
 iter->bitmap[idx] |= NETLBL_CATMAP_BIT << (bit % NETLBL_CATMAP_MAPSIZE);

 return 0;
}
