
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int rd_gl; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_holder {int dummy; } ;


 int EINVAL ;
 int ESTALE ;
 int LM_ST_SHARED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_rbm_from_block (struct gfs2_rbm*,int ) ;
 unsigned int gfs2_testbit (struct gfs2_rbm*,int) ;

int gfs2_check_blk_type(struct gfs2_sbd *sdp, u64 no_addr, unsigned int type)
{
 struct gfs2_rgrpd *rgd;
 struct gfs2_holder rgd_gh;
 struct gfs2_rbm rbm;
 int error = -EINVAL;

 rgd = gfs2_blk2rgrpd(sdp, no_addr, 1);
 if (!rgd)
  goto fail;

 error = gfs2_glock_nq_init(rgd->rd_gl, LM_ST_SHARED, 0, &rgd_gh);
 if (error)
  goto fail;

 rbm.rgd = rgd;
 error = gfs2_rbm_from_block(&rbm, no_addr);
 if (WARN_ON_ONCE(error))
  goto fail;

 if (gfs2_testbit(&rbm, 0) != type)
  error = -ESTALE;

 gfs2_glock_dq_uninit(&rgd_gh);
fail:
 return error;
}
