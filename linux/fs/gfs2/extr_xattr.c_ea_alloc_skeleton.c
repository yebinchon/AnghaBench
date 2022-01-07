
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; } ;
typedef int (* ea_skeleton_call_t ) (struct gfs2_inode*,struct gfs2_ea_request*,void*) ;


 int GFS2_SB (TYPE_1__*) ;
 int I_DIRTY_DATASYNC ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_STATFS ;
 int __mark_inode_dirty (TYPE_1__*,int ) ;
 int current_time (TYPE_1__*) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 int gfs2_inplace_reserve (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_lock_check (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 scalar_t__ gfs2_rg_blocks (struct gfs2_inode*,unsigned int) ;
 int gfs2_rindex_update (int ) ;
 int gfs2_trans_begin (int ,scalar_t__,int ) ;
 int gfs2_trans_end (int ) ;

__attribute__((used)) static int ea_alloc_skeleton(struct gfs2_inode *ip, struct gfs2_ea_request *er,
        unsigned int blks,
        ea_skeleton_call_t skeleton_call, void *private)
{
 struct gfs2_alloc_parms ap = { .target = blks };
 int error;

 error = gfs2_rindex_update(GFS2_SB(&ip->i_inode));
 if (error)
  return error;

 error = gfs2_quota_lock_check(ip, &ap);
 if (error)
  return error;

 error = gfs2_inplace_reserve(ip, &ap);
 if (error)
  goto out_gunlock_q;

 error = gfs2_trans_begin(GFS2_SB(&ip->i_inode),
     blks + gfs2_rg_blocks(ip, blks) +
     RES_DINODE + RES_STATFS + RES_QUOTA, 0);
 if (error)
  goto out_ipres;

 error = skeleton_call(ip, er, private);
 if (error)
  goto out_end_trans;

 ip->i_inode.i_ctime = current_time(&ip->i_inode);
 __mark_inode_dirty(&ip->i_inode, I_DIRTY_DATASYNC);

out_end_trans:
 gfs2_trans_end(GFS2_SB(&ip->i_inode));
out_ipres:
 gfs2_inplace_release(ip);
out_gunlock_q:
 gfs2_quota_unlock(ip);
 return error;
}
