
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_lockref; } ;


 int __gfs2_glock_put (struct gfs2_glock*) ;
 scalar_t__ lockref_put_or_lock (int *) ;

void gfs2_glock_put(struct gfs2_glock *gl)
{
 if (lockref_put_or_lock(&gl->gl_lockref))
  return;

 __gfs2_glock_put(gl);
}
