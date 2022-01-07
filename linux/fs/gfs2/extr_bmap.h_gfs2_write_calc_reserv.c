
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sb_bsize_shift; } ;
struct gfs2_sbd {int sd_max_height; unsigned int sd_diptrs; int sd_inptrs; TYPE_1__ sd_sb; } ;
struct gfs2_inode {int i_inode; } ;


 int BUG_ON (int ) ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_is_dir (struct gfs2_inode const*) ;

__attribute__((used)) static inline void gfs2_write_calc_reserv(const struct gfs2_inode *ip,
       unsigned int len,
       unsigned int *data_blocks,
       unsigned int *ind_blocks)
{
 const struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 unsigned int tmp;

 BUG_ON(gfs2_is_dir(ip));
 *data_blocks = (len >> sdp->sd_sb.sb_bsize_shift) + 3;
 *ind_blocks = 3 * (sdp->sd_max_height - 1);

 for (tmp = *data_blocks; tmp > sdp->sd_diptrs;) {
  tmp = DIV_ROUND_UP(tmp, sdp->sd_inptrs);
  *ind_blocks += tmp;
 }
}
