
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {long long tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; TYPE_1__ i_atime; int i_mode; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_holder {struct gfs2_glock* gh_gl; int gh_flags; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; struct gfs2_holder i_iopen_gh; int i_flags; int i_no_formal_ino; } ;
struct gfs2_glock {int gl_work; } ;


 int CREATE ;
 int DT2IF (unsigned int) ;
 unsigned int DT_UNKNOWN ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 unsigned int GFS2_BLKST_FREE ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int GIF_INVALID ;
 int GL_EXACT ;
 int GL_NOCACHE ;
 int GL_SKIP ;
 int I_NEW ;
 int LM_ST_EXCLUSIVE ;
 int LM_ST_SHARED ;
 int flush_delayed_work (int *) ;
 int gfs2_check_blk_type (struct gfs2_sbd*,int ,unsigned int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_get (struct gfs2_sbd*,int ,int *,int ,struct gfs2_glock**) ;
 int gfs2_glock_nq_init (struct gfs2_glock*,int ,int ,struct gfs2_holder*) ;
 int gfs2_glock_put (struct gfs2_glock*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;
 struct inode* gfs2_iget (struct super_block*,int ) ;
 int gfs2_inode_glops ;
 int gfs2_inode_refresh (struct gfs2_inode*) ;
 int gfs2_iopen_glops ;
 int gfs2_set_iop (struct inode*) ;
 int glock_clear_object (struct gfs2_glock*,struct gfs2_inode*) ;
 int glock_set_object (struct gfs2_glock*,struct gfs2_inode*) ;
 int iget_failed (struct inode*) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *gfs2_inode_lookup(struct super_block *sb, unsigned int type,
    u64 no_addr, u64 no_formal_ino,
    unsigned int blktype)
{
 struct inode *inode;
 struct gfs2_inode *ip;
 struct gfs2_glock *io_gl = ((void*)0);
 struct gfs2_holder i_gh;
 int error;

 gfs2_holder_mark_uninitialized(&i_gh);
 inode = gfs2_iget(sb, no_addr);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 ip = GFS2_I(inode);

 if (inode->i_state & I_NEW) {
  struct gfs2_sbd *sdp = GFS2_SB(inode);
  ip->i_no_formal_ino = no_formal_ino;

  error = gfs2_glock_get(sdp, no_addr, &gfs2_inode_glops, CREATE, &ip->i_gl);
  if (unlikely(error))
   goto fail;
  flush_delayed_work(&ip->i_gl->gl_work);

  error = gfs2_glock_get(sdp, no_addr, &gfs2_iopen_glops, CREATE, &io_gl);
  if (unlikely(error))
   goto fail_put;

  if (type == DT_UNKNOWN || blktype != GFS2_BLKST_FREE) {





   error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE,
         GL_SKIP, &i_gh);
   if (error)
    goto fail_put;

   if (blktype != GFS2_BLKST_FREE) {
    error = gfs2_check_blk_type(sdp, no_addr,
           blktype);
    if (error)
     goto fail_put;
   }
  }

  glock_set_object(ip->i_gl, ip);
  set_bit(GIF_INVALID, &ip->i_flags);
  error = gfs2_glock_nq_init(io_gl, LM_ST_SHARED, GL_EXACT, &ip->i_iopen_gh);
  if (unlikely(error))
   goto fail_put;
  glock_set_object(ip->i_iopen_gh.gh_gl, ip);
  gfs2_glock_put(io_gl);
  io_gl = ((void*)0);

  if (type == DT_UNKNOWN) {

   error = gfs2_inode_refresh(GFS2_I(inode));
   if (error)
    goto fail_refresh;
  } else {
   inode->i_mode = DT2IF(type);
  }

  gfs2_set_iop(inode);


  inode->i_atime.tv_sec = 1LL << (8 * sizeof(inode->i_atime.tv_sec) - 1);
  inode->i_atime.tv_nsec = 0;

  unlock_new_inode(inode);
 }

 if (gfs2_holder_initialized(&i_gh))
  gfs2_glock_dq_uninit(&i_gh);
 return inode;

fail_refresh:
 ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
 glock_clear_object(ip->i_iopen_gh.gh_gl, ip);
 gfs2_glock_dq_uninit(&ip->i_iopen_gh);
fail_put:
 if (io_gl)
  gfs2_glock_put(io_gl);
 glock_clear_object(ip->i_gl, ip);
 if (gfs2_holder_initialized(&i_gh))
  gfs2_glock_dq_uninit(&i_gh);
fail:
 iget_failed(inode);
 return ERR_PTR(error);
}
