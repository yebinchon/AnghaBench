
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct gfs2_rbm {int dummy; } ;


 scalar_t__ GFS2_BLKST_FREE ;
 scalar_t__ gfs2_rbm_incr (struct gfs2_rbm*) ;
 scalar_t__ gfs2_testbit (struct gfs2_rbm*,int) ;

__attribute__((used)) static bool gfs2_unaligned_extlen(struct gfs2_rbm *rbm, u32 n_unaligned, u32 *len)
{
 u32 n;
 u8 res;

 for (n = 0; n < n_unaligned; n++) {
  res = gfs2_testbit(rbm, 1);
  if (res != GFS2_BLKST_FREE)
   return 1;
  (*len)--;
  if (*len == 0)
   return 1;
  if (gfs2_rbm_incr(rbm))
   return 1;
 }

 return 0;
}
