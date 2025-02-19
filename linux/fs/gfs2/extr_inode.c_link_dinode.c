
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_inode; } ;
struct gfs2_diradd {scalar_t__ nr_blocks; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int RES_DINODE ;
 scalar_t__ RES_LEAF ;
 int gfs2_dir_add (int *,struct qstr const*,struct gfs2_inode*,struct gfs2_diradd*) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 int gfs2_inplace_reserve (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_lock_check (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 scalar_t__ gfs2_trans_da_blks (struct gfs2_inode*,struct gfs2_diradd*,int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;

__attribute__((used)) static int link_dinode(struct gfs2_inode *dip, const struct qstr *name,
         struct gfs2_inode *ip, struct gfs2_diradd *da)
{
 struct gfs2_sbd *sdp = GFS2_SB(&dip->i_inode);
 struct gfs2_alloc_parms ap = { .target = da->nr_blocks, };
 int error;

 if (da->nr_blocks) {
  error = gfs2_quota_lock_check(dip, &ap);
  if (error)
   goto fail_quota_locks;

  error = gfs2_inplace_reserve(dip, &ap);
  if (error)
   goto fail_quota_locks;

  error = gfs2_trans_begin(sdp, gfs2_trans_da_blks(dip, da, 2), 0);
  if (error)
   goto fail_ipreserv;
 } else {
  error = gfs2_trans_begin(sdp, RES_LEAF + 2 * RES_DINODE, 0);
  if (error)
   goto fail_quota_locks;
 }

 error = gfs2_dir_add(&dip->i_inode, name, ip, da);

 gfs2_trans_end(sdp);
fail_ipreserv:
 gfs2_inplace_release(dip);
fail_quota_locks:
 gfs2_quota_unlock(dip);
 return error;
}
