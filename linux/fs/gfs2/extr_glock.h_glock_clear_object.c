
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct gfs2_glock {void* gl_object; TYPE_1__ gl_lockref; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void glock_clear_object(struct gfs2_glock *gl, void *object)
{
 spin_lock(&gl->gl_lockref.lock);
 if (gl->gl_object == object)
  gl->gl_object = ((void*)0);
 spin_unlock(&gl->gl_lockref.lock);
}
