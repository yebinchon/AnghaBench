
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrpd {int dummy; } ;
struct gfs2_holder {TYPE_1__* gh_gl; } ;
struct TYPE_2__ {int gl_flags; struct gfs2_rgrpd* gl_object; } ;


 int GLF_DEMOTE ;
 int GLF_PENDING_DEMOTE ;
 int gfs2_rgrp_brelse (struct gfs2_rgrpd*) ;
 int test_bit (int ,int *) ;

void gfs2_rgrp_go_unlock(struct gfs2_holder *gh)
{
 struct gfs2_rgrpd *rgd = gh->gh_gl->gl_object;
 int demote_requested = test_bit(GLF_DEMOTE, &gh->gh_gl->gl_flags) |
  test_bit(GLF_PENDING_DEMOTE, &gh->gh_gl->gl_flags);

 if (rgd && demote_requested)
  gfs2_rgrp_brelse(rgd);
}
