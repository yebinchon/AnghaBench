
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_async_glock_wait; } ;
struct gfs2_holder {int gh_flags; TYPE_2__* gh_gl; int gh_iflags; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;


 int GL_ASYNC ;
 int HIF_WAIT ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int wake_up (int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void gfs2_holder_wake(struct gfs2_holder *gh)
{
 clear_bit(HIF_WAIT, &gh->gh_iflags);
 smp_mb__after_atomic();
 wake_up_bit(&gh->gh_iflags, HIF_WAIT);
 if (gh->gh_flags & GL_ASYNC) {
  struct gfs2_sbd *sdp = gh->gh_gl->gl_name.ln_sbd;

  wake_up(&sdp->sd_async_glock_wait);
 }
}
