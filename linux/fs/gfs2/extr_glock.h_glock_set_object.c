
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int ln_sbd; } ;
struct gfs2_glock {TYPE_2__ gl_lockref; int * gl_object; TYPE_1__ gl_name; } ;


 scalar_t__ gfs2_assert_warn (int ,int ) ;
 int gfs2_dump_glock (int *,struct gfs2_glock*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void glock_set_object(struct gfs2_glock *gl, void *object)
{
 spin_lock(&gl->gl_lockref.lock);
 if (gfs2_assert_warn(gl->gl_name.ln_sbd, gl->gl_object == ((void*)0)))
  gfs2_dump_glock(((void*)0), gl, 1);
 gl->gl_object = object;
 spin_unlock(&gl->gl_lockref.lock);
}
