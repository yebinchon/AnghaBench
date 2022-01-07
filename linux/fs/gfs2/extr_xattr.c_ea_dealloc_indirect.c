
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct gfs2_sbd {int sd_inptrs; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_1__* rl_ghs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_gl; int i_diskflags; int i_inode; int i_eattr; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __be64 ;
struct TYPE_3__ {int gh_gl; } ;


 int DIO_WAIT ;
 int EIO ;
 int GFS2_DIF_EA_INDIRECT ;
 int GFS2_METATYPE_IN ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_INDIRECT ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_STATFS ;
 scalar_t__ be64_to_cpu (scalar_t__) ;
 int brelse (struct buffer_head*) ;
 int gfs2_add_inode_blocks (int *,int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,scalar_t__,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_free_meta (struct gfs2_inode*,struct gfs2_rgrpd*,scalar_t__,unsigned int) ;
 struct gfs2_rgrpd* gfs2_glock2rgrp (int ) ;
 int gfs2_glock_dq_m (unsigned int,TYPE_1__*) ;
 int gfs2_glock_nq_m (unsigned int,TYPE_1__*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_rlist_add (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ;
 int gfs2_rlist_alloc (struct gfs2_rgrp_list*) ;
 int gfs2_rlist_free (struct gfs2_rgrp_list*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int memset (struct gfs2_rgrp_list*,int ,int) ;

__attribute__((used)) static int ea_dealloc_indirect(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrp_list rlist;
 struct gfs2_rgrpd *rgd;
 struct buffer_head *indbh, *dibh;
 __be64 *eablk, *end;
 unsigned int rg_blocks = 0;
 u64 bstart = 0;
 unsigned int blen = 0;
 unsigned int blks = 0;
 unsigned int x;
 int error;

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 memset(&rlist, 0, sizeof(struct gfs2_rgrp_list));

 error = gfs2_meta_read(ip->i_gl, ip->i_eattr, DIO_WAIT, 0, &indbh);
 if (error)
  return error;

 if (gfs2_metatype_check(sdp, indbh, GFS2_METATYPE_IN)) {
  error = -EIO;
  goto out;
 }

 eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
 end = eablk + sdp->sd_inptrs;

 for (; eablk < end; eablk++) {
  u64 bn;

  if (!*eablk)
   break;
  bn = be64_to_cpu(*eablk);

  if (bstart + blen == bn)
   blen++;
  else {
   if (bstart)
    gfs2_rlist_add(ip, &rlist, bstart);
   bstart = bn;
   blen = 1;
  }
  blks++;
 }
 if (bstart)
  gfs2_rlist_add(ip, &rlist, bstart);
 else
  goto out;

 gfs2_rlist_alloc(&rlist);

 for (x = 0; x < rlist.rl_rgrps; x++) {
  rgd = gfs2_glock2rgrp(rlist.rl_ghs[x].gh_gl);
  rg_blocks += rgd->rd_length;
 }

 error = gfs2_glock_nq_m(rlist.rl_rgrps, rlist.rl_ghs);
 if (error)
  goto out_rlist_free;

 error = gfs2_trans_begin(sdp, rg_blocks + RES_DINODE + RES_INDIRECT +
     RES_STATFS + RES_QUOTA, blks);
 if (error)
  goto out_gunlock;

 gfs2_trans_add_meta(ip->i_gl, indbh);

 eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
 bstart = 0;
 rgd = ((void*)0);
 blen = 0;

 for (; eablk < end; eablk++) {
  u64 bn;

  if (!*eablk)
   break;
  bn = be64_to_cpu(*eablk);

  if (bstart + blen == bn)
   blen++;
  else {
   if (bstart)
    gfs2_free_meta(ip, rgd, bstart, blen);
   bstart = bn;
   rgd = gfs2_blk2rgrpd(sdp, bstart, 1);
   blen = 1;
  }

  *eablk = 0;
  gfs2_add_inode_blocks(&ip->i_inode, -1);
 }
 if (bstart)
  gfs2_free_meta(ip, rgd, bstart, blen);

 ip->i_diskflags &= ~GFS2_DIF_EA_INDIRECT;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (!error) {
  gfs2_trans_add_meta(ip->i_gl, dibh);
  gfs2_dinode_out(ip, dibh->b_data);
  brelse(dibh);
 }

 gfs2_trans_end(sdp);

out_gunlock:
 gfs2_glock_dq_m(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist_free:
 gfs2_rlist_free(&rlist);
out:
 brelse(indbh);
 return error;
}
