
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;
struct gfs2_ea_header {int dummy; } ;
struct buffer_head {int dummy; } ;


 int GFS2_SB (int *) ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 int ea_dealloc_unstuffed (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct gfs2_ea_header*,int*) ;
 int gfs2_quota_hold (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rindex_update (int ) ;

__attribute__((used)) static int ea_remove_unstuffed(struct gfs2_inode *ip, struct buffer_head *bh,
          struct gfs2_ea_header *ea,
          struct gfs2_ea_header *prev, int leave)
{
 int error;

 error = gfs2_rindex_update(GFS2_SB(&ip->i_inode));
 if (error)
  return error;

 error = gfs2_quota_hold(ip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
 if (error)
  goto out_alloc;

 error = ea_dealloc_unstuffed(ip, bh, ea, prev, (leave) ? &error : ((void*)0));

 gfs2_quota_unhold(ip);
out_alloc:
 return error;
}
