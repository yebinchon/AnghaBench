
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gfs2_jdesc {scalar_t__ jd_blocks; } ;



__attribute__((used)) static inline void gfs2_replay_incr_blk(struct gfs2_jdesc *jd, u32 *blk)
{
 if (++*blk == jd->jd_blocks)
         *blk = 0;
}
