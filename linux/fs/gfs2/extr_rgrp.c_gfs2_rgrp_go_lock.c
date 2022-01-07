
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ar_rgrplvb; } ;
struct gfs2_sbd {TYPE_2__ sd_args; } ;
struct gfs2_rgrpd {struct gfs2_sbd* rd_sbd; } ;
struct gfs2_holder {int gh_flags; TYPE_1__* gh_gl; } ;
struct TYPE_3__ {struct gfs2_rgrpd* gl_object; } ;


 int GL_SKIP ;
 int gfs2_rgrp_bh_get (struct gfs2_rgrpd*) ;

int gfs2_rgrp_go_lock(struct gfs2_holder *gh)
{
 struct gfs2_rgrpd *rgd = gh->gh_gl->gl_object;
 struct gfs2_sbd *sdp = rgd->rd_sbd;

 if (gh->gh_flags & GL_SKIP && sdp->sd_args.ar_rgrplvb)
  return 0;
 return gfs2_rgrp_bh_get(rgd);
}
