
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct gfs2_glock {TYPE_1__ gl_lockref; } ;


 int __gfs2_glock_queue_work (struct gfs2_glock*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gfs2_glock_queue_work(struct gfs2_glock *gl, unsigned long delay) {
 spin_lock(&gl->gl_lockref.lock);
 __gfs2_glock_queue_work(gl, delay);
 spin_unlock(&gl->gl_lockref.lock);
}
