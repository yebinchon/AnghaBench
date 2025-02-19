
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_bsize_shift; } ;
struct gfs2_sbd {int sd_max_height; unsigned int sd_diptrs; TYPE_1__ sd_sb; int sd_inptrs; } ;
struct gfs2_inode {int i_inode; } ;
typedef int loff_t ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_write_calc_reserv (struct gfs2_inode*,int,unsigned int*,unsigned int*) ;

__attribute__((used)) static void calc_max_reserv(struct gfs2_inode *ip, loff_t *len,
       unsigned int *data_blocks, unsigned int *ind_blocks,
       unsigned int max_blocks)
{
 loff_t max = *len;
 const struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 unsigned int tmp, max_data = max_blocks - 3 * (sdp->sd_max_height - 1);

 for (tmp = max_data; tmp > sdp->sd_diptrs;) {
  tmp = DIV_ROUND_UP(tmp, sdp->sd_inptrs);
  max_data -= tmp;
 }

 *data_blocks = max_data;
 *ind_blocks = max_blocks - max_data;
 *len = ((loff_t)max_data - 3) << sdp->sd_sb.sb_bsize_shift;
 if (*len > max) {
  *len = max;
  gfs2_write_calc_reserv(ip, max, data_blocks, ind_blocks);
 }
}
