
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {scalar_t__* mp_list; } ;
struct gfs2_sbd {scalar_t__ sd_inptrs; scalar_t__ sd_diptrs; } ;
typedef scalar_t__ __u16 ;


 int mp_eq_to_hgt (struct metapath*,scalar_t__*,int) ;

__attribute__((used)) static inline bool walk_done(struct gfs2_sbd *sdp,
        struct metapath *mp, int height,
        __u16 *end_list, unsigned int end_aligned)
{
 __u16 end;

 if (end_list) {
  bool keep_end = height < end_aligned;
  if (!mp_eq_to_hgt(mp, end_list, height))
   return 0;
  end = end_list[height] + keep_end;
 } else
  end = (height > 0) ? sdp->sd_inptrs : sdp->sd_diptrs;
 return mp->mp_list[height] >= end;
}
