
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {int i_ino; } ;
struct gfs2_inode {int i_no_addr; int i_goal; TYPE_1__ i_inode; int i_generation; int i_no_formal_ino; } ;
struct gfs2_alloc_parms {unsigned int target; int aflags; } ;


 struct gfs2_sbd* GFS2_SB (TYPE_1__*) ;
 scalar_t__ RES_QUOTA ;
 unsigned int RES_RG_BIT ;
 scalar_t__ RES_STATFS ;
 int gfs2_alloc_blocks (struct gfs2_inode*,int *,unsigned int*,int,int *) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 int gfs2_inplace_reserve (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_lock_check (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;

__attribute__((used)) static int alloc_dinode(struct gfs2_inode *ip, u32 flags, unsigned *dblocks)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_alloc_parms ap = { .target = *dblocks, .aflags = flags, };
 int error;

 error = gfs2_quota_lock_check(ip, &ap);
 if (error)
  goto out;

 error = gfs2_inplace_reserve(ip, &ap);
 if (error)
  goto out_quota;

 error = gfs2_trans_begin(sdp, (*dblocks * RES_RG_BIT) + RES_STATFS + RES_QUOTA, 0);
 if (error)
  goto out_ipreserv;

 error = gfs2_alloc_blocks(ip, &ip->i_no_addr, dblocks, 1, &ip->i_generation);
 ip->i_no_formal_ino = ip->i_generation;
 ip->i_inode.i_ino = ip->i_no_addr;
 ip->i_goal = ip->i_no_addr;

 gfs2_trans_end(sdp);

out_ipreserv:
 gfs2_inplace_release(ip);
out_quota:
 gfs2_quota_unlock(ip);
out:
 return error;
}
