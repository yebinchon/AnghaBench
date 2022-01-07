
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_log_descriptor {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;

unsigned int gfs2_struct2blk(struct gfs2_sbd *sdp, unsigned int nstruct,
        unsigned int ssize)
{
 unsigned int blks;
 unsigned int first, second;

 blks = 1;
 first = (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_log_descriptor)) / ssize;

 if (nstruct > first) {
  second = (sdp->sd_sb.sb_bsize -
     sizeof(struct gfs2_meta_header)) / ssize;
  blks += DIV_ROUND_UP(nstruct - first, second);
 }

 return blks;
}
