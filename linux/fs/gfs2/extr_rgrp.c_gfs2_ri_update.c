
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_rindex_uptodate; } ;
struct gfs2_inode {int i_inode; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int read_rindex_entry (struct gfs2_inode*) ;
 int set_rgrp_preferences (struct gfs2_sbd*) ;

__attribute__((used)) static int gfs2_ri_update(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 int error;

 do {
  error = read_rindex_entry(ip);
 } while (error == 0);

 if (error < 0)
  return error;

 set_rgrp_preferences(sdp);

 sdp->sd_rindex_uptodate = 1;
 return 0;
}
