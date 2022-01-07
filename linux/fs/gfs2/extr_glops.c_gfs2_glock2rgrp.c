
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrpd {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct gfs2_glock {TYPE_1__ gl_lockref; struct gfs2_rgrpd* gl_object; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct gfs2_rgrpd *gfs2_glock2rgrp(struct gfs2_glock *gl)
{
 struct gfs2_rgrpd *rgd;

 spin_lock(&gl->gl_lockref.lock);
 rgd = gl->gl_object;
 spin_unlock(&gl->gl_lockref.lock);

 return rgd;
}
