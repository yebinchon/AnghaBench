
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {scalar_t__ sd_jindex; scalar_t__ sd_rindex; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_object; TYPE_1__ gl_name; } ;



__attribute__((used)) static int inode_go_demote_ok(const struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

 if (sdp->sd_jindex == gl->gl_object || sdp->sd_rindex == gl->gl_object)
  return 0;

 return 1;
}
