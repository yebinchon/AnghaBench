
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_vfs; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_3__ {int count; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_demote_state; scalar_t__ gl_state; TYPE_1__ gl_lockref; int gl_delete; TYPE_2__ gl_name; struct gfs2_inode* gl_object; } ;


 scalar_t__ LM_ST_SHARED ;
 scalar_t__ LM_ST_UNLOCKED ;
 int gfs2_delete_workqueue ;
 scalar_t__ queue_work (int ,int *) ;
 scalar_t__ sb_rdonly (int ) ;

__attribute__((used)) static void iopen_go_callback(struct gfs2_glock *gl, bool remote)
{
 struct gfs2_inode *ip = gl->gl_object;
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

 if (!remote || sb_rdonly(sdp->sd_vfs))
  return;

 if (gl->gl_demote_state == LM_ST_UNLOCKED &&
     gl->gl_state == LM_ST_SHARED && ip) {
  gl->gl_lockref.count++;
  if (queue_work(gfs2_delete_workqueue, &gl->gl_delete) == 0)
   gl->gl_lockref.count--;
 }
}
