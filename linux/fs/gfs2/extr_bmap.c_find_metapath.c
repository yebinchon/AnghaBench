
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct metapath {unsigned int mp_fheight; int * mp_list; } ;
struct gfs2_sbd {int sd_inptrs; } ;


 int do_div (int ,int ) ;

__attribute__((used)) static void find_metapath(const struct gfs2_sbd *sdp, u64 block,
     struct metapath *mp, unsigned int height)
{
 unsigned int i;

 mp->mp_fheight = height;
 for (i = height; i--;)
  mp->mp_list[i] = do_div(block, sdp->sd_inptrs);
}
