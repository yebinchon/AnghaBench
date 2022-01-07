
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct gfs2_glock {scalar_t__ gl_state; TYPE_1__ gl_lockref; } ;


 scalar_t__ LM_ST_UNLOCKED ;
 int __gfs2_glock_queue_work (struct gfs2_glock*,int ) ;
 int gfs2_glock_remove_from_lru (struct gfs2_glock*) ;
 int handle_callback (struct gfs2_glock*,scalar_t__,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void clear_glock(struct gfs2_glock *gl)
{
 gfs2_glock_remove_from_lru(gl);

 spin_lock(&gl->gl_lockref.lock);
 if (gl->gl_state != LM_ST_UNLOCKED)
  handle_callback(gl, LM_ST_UNLOCKED, 0, 0);
 __gfs2_glock_queue_work(gl, 0);
 spin_unlock(&gl->gl_lockref.lock);
}
