
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_no_addr; int i_goal; int i_inode; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int * gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;

void check_and_update_goal(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 if (!ip->i_goal || gfs2_blk2rgrpd(sdp, ip->i_goal, 1) == ((void*)0))
  ip->i_goal = ip->i_no_addr;
}
