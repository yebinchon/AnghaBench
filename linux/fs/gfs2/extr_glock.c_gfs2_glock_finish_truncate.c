
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int ln_sbd; } ;
struct gfs2_glock {TYPE_2__ gl_lockref; int gl_flags; TYPE_1__ gl_name; } ;


 int GLF_LOCK ;
 int clear_bit (int ,int *) ;
 int gfs2_assert_withdraw (int ,int) ;
 int gfs2_truncatei_resume (struct gfs2_inode*) ;
 int run_queue (struct gfs2_glock*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gfs2_glock_finish_truncate(struct gfs2_inode *ip)
{
 struct gfs2_glock *gl = ip->i_gl;
 int ret;

 ret = gfs2_truncatei_resume(ip);
 gfs2_assert_withdraw(gl->gl_name.ln_sbd, ret == 0);

 spin_lock(&gl->gl_lockref.lock);
 clear_bit(GLF_LOCK, &gl->gl_flags);
 run_queue(gl, 1);
 spin_unlock(&gl->gl_lockref.lock);
}
