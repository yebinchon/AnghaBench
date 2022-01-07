
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_diskflags; int i_inode; } ;


 int GFS2_DIF_EA_INDIRECT ;
 int GFS2_SB (int *) ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 int ea_dealloc_block (struct gfs2_inode*) ;
 int ea_dealloc_indirect (struct gfs2_inode*) ;
 int ea_dealloc_unstuffed ;
 int ea_foreach (struct gfs2_inode*,int ,int *) ;
 int gfs2_quota_hold (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rindex_update (int ) ;

int gfs2_ea_dealloc(struct gfs2_inode *ip)
{
 int error;

 error = gfs2_rindex_update(GFS2_SB(&ip->i_inode));
 if (error)
  return error;

 error = gfs2_quota_hold(ip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
 if (error)
  return error;

 error = ea_foreach(ip, ea_dealloc_unstuffed, ((void*)0));
 if (error)
  goto out_quota;

 if (ip->i_diskflags & GFS2_DIF_EA_INDIRECT) {
  error = ea_dealloc_indirect(ip);
  if (error)
   goto out_quota;
 }

 error = ea_dealloc_block(ip);

out_quota:
 gfs2_quota_unhold(ip);
 return error;
}
