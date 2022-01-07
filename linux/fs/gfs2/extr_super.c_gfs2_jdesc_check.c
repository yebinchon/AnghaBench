
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_jdesc {int jd_blocks; int jd_inode; } ;
struct gfs2_inode {int dummy; } ;


 int BIT (int) ;
 int EIO ;
 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 scalar_t__ gfs2_check_internal_file_size (int ,int,int ) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_write_alloc_required (struct gfs2_inode*,int ,int) ;
 int i_size_read (int ) ;

int gfs2_jdesc_check(struct gfs2_jdesc *jd)
{
 struct gfs2_inode *ip = GFS2_I(jd->jd_inode);
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);
 u64 size = i_size_read(jd->jd_inode);

 if (gfs2_check_internal_file_size(jd->jd_inode, 8 << 20, BIT(30)))
  return -EIO;

 jd->jd_blocks = size >> sdp->sd_sb.sb_bsize_shift;

 if (gfs2_write_alloc_required(ip, 0, size)) {
  gfs2_consist_inode(ip);
  return -EIO;
 }

 return 0;
}
