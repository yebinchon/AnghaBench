
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_lsm_catmap {int dummy; } ;
typedef int gfp_t ;


 int BITS_PER_LONG ;
 int netlbl_catmap_setbit (struct netlbl_lsm_catmap**,int ,int ) ;
 int netlbl_catmap_setlong (struct netlbl_lsm_catmap**,int,unsigned long,int ) ;

int netlbl_catmap_setrng(struct netlbl_lsm_catmap **catmap,
    u32 start,
    u32 end,
    gfp_t flags)
{
 int rc = 0;
 u32 spot = start;

 while (rc == 0 && spot <= end) {
  if (((spot & (BITS_PER_LONG - 1)) == 0) &&
      ((end - spot) > BITS_PER_LONG)) {
   rc = netlbl_catmap_setlong(catmap,
         spot,
         (unsigned long)-1,
         flags);
   spot += BITS_PER_LONG;
  } else
   rc = netlbl_catmap_setbit(catmap, spot++, flags);
 }

 return rc;
}
