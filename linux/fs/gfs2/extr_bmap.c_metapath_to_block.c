
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int mp_fheight; int mp_aheight; int* mp_list; } ;
struct gfs2_sbd {int sd_inptrs; } ;
typedef int sector_t ;



__attribute__((used)) static sector_t metapath_to_block(struct gfs2_sbd *sdp, struct metapath *mp)
{
 sector_t factor = 1, block = 0;
 int hgt;

 for (hgt = mp->mp_fheight - 1; hgt >= 0; hgt--) {
  if (hgt < mp->mp_aheight)
   block += mp->mp_list[hgt] * factor;
  factor *= sdp->sd_inptrs;
 }
 return block;
}
