
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct gfs2_glock {TYPE_1__ gl_lockref; int gl_work; } ;


 int GLOCK_BUG_ON (struct gfs2_glock*,int) ;
 int glock_workqueue ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void __gfs2_glock_queue_work(struct gfs2_glock *gl, unsigned long delay) {
 if (!queue_delayed_work(glock_workqueue, &gl->gl_work, delay)) {






  GLOCK_BUG_ON(gl, gl->gl_lockref.count < 2);
  gl->gl_lockref.count--;
 }
}
