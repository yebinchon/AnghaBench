
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct gfs2_sbd {int sd_jbsize; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_1__* rl_ghs; } ;
struct gfs2_leaf {int lf_next; } ;
struct TYPE_6__ {int i_mode; } ;
struct gfs2_inode {TYPE_3__ i_inode; int i_gl; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {int gh_gl; } ;


 scalar_t__ DIV_ROUND_UP (unsigned int,int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct gfs2_sbd* GFS2_SB (TYPE_3__*) ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 int PAGE_KERNEL ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_STATFS ;
 int S_IFREG ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 char* __vmalloc (unsigned int,int,int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int get_leaf (struct gfs2_inode*,scalar_t__,struct buffer_head**) ;
 int gfs2_add_inode_blocks (TYPE_3__*,int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,scalar_t__,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_dir_write_data (struct gfs2_inode*,char*,int,unsigned int) ;
 int gfs2_free_meta (struct gfs2_inode*,struct gfs2_rgrpd*,scalar_t__,int) ;
 struct gfs2_rgrpd* gfs2_glock2rgrp (int ) ;
 int gfs2_glock_dq_m (unsigned int,TYPE_1__*) ;
 int gfs2_glock_nq_m (unsigned int,TYPE_1__*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_quota_hold (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_rlist_add (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ;
 int gfs2_rlist_alloc (struct gfs2_rgrp_list*) ;
 int gfs2_rlist_free (struct gfs2_rgrp_list*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int kvfree (char*) ;
 char* kzalloc (unsigned int,int) ;
 int memset (struct gfs2_rgrp_list*,int ,int) ;

__attribute__((used)) static int leaf_dealloc(struct gfs2_inode *dip, u32 index, u32 len,
   u64 leaf_no, struct buffer_head *leaf_bh,
   int last_dealloc)
{
 struct gfs2_sbd *sdp = GFS2_SB(&dip->i_inode);
 struct gfs2_leaf *tmp_leaf;
 struct gfs2_rgrp_list rlist;
 struct buffer_head *bh, *dibh;
 u64 blk, nblk;
 unsigned int rg_blocks = 0, l_blocks = 0;
 char *ht;
 unsigned int x, size = len * sizeof(u64);
 int error;

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 memset(&rlist, 0, sizeof(struct gfs2_rgrp_list));

 ht = kzalloc(size, GFP_NOFS | __GFP_NOWARN);
 if (ht == ((void*)0))
  ht = __vmalloc(size, GFP_NOFS | __GFP_NOWARN | __GFP_ZERO,
          PAGE_KERNEL);
 if (!ht)
  return -ENOMEM;

 error = gfs2_quota_hold(dip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
 if (error)
  goto out;


 bh = leaf_bh;

 for (blk = leaf_no; blk; blk = nblk) {
  if (blk != leaf_no) {
   error = get_leaf(dip, blk, &bh);
   if (error)
    goto out_rlist;
  }
  tmp_leaf = (struct gfs2_leaf *)bh->b_data;
  nblk = be64_to_cpu(tmp_leaf->lf_next);
  if (blk != leaf_no)
   brelse(bh);

  gfs2_rlist_add(dip, &rlist, blk);
  l_blocks++;
 }

 gfs2_rlist_alloc(&rlist);

 for (x = 0; x < rlist.rl_rgrps; x++) {
  struct gfs2_rgrpd *rgd = gfs2_glock2rgrp(rlist.rl_ghs[x].gh_gl);

  rg_blocks += rgd->rd_length;
 }

 error = gfs2_glock_nq_m(rlist.rl_rgrps, rlist.rl_ghs);
 if (error)
  goto out_rlist;

 error = gfs2_trans_begin(sdp,
   rg_blocks + (DIV_ROUND_UP(size, sdp->sd_jbsize) + 1) +
   RES_DINODE + RES_STATFS + RES_QUOTA, l_blocks);
 if (error)
  goto out_rg_gunlock;

 bh = leaf_bh;

 for (blk = leaf_no; blk; blk = nblk) {
  struct gfs2_rgrpd *rgd;

  if (blk != leaf_no) {
   error = get_leaf(dip, blk, &bh);
   if (error)
    goto out_end_trans;
  }
  tmp_leaf = (struct gfs2_leaf *)bh->b_data;
  nblk = be64_to_cpu(tmp_leaf->lf_next);
  if (blk != leaf_no)
   brelse(bh);

  rgd = gfs2_blk2rgrpd(sdp, blk, 1);
  gfs2_free_meta(dip, rgd, blk, 1);
  gfs2_add_inode_blocks(&dip->i_inode, -1);
 }

 error = gfs2_dir_write_data(dip, ht, index * sizeof(u64), size);
 if (error != size) {
  if (error >= 0)
   error = -EIO;
  goto out_end_trans;
 }

 error = gfs2_meta_inode_buffer(dip, &dibh);
 if (error)
  goto out_end_trans;

 gfs2_trans_add_meta(dip->i_gl, dibh);


 if (last_dealloc)
  dip->i_inode.i_mode = S_IFREG;
 gfs2_dinode_out(dip, dibh->b_data);
 brelse(dibh);

out_end_trans:
 gfs2_trans_end(sdp);
out_rg_gunlock:
 gfs2_glock_dq_m(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist:
 gfs2_rlist_free(&rlist);
 gfs2_quota_unhold(dip);
out:
 kvfree(ht);
 return error;
}
