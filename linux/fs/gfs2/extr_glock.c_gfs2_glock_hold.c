
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_lockref; } ;


 int GLOCK_BUG_ON (struct gfs2_glock*,int ) ;
 int __lockref_is_dead (int *) ;
 int lockref_get (int *) ;

void gfs2_glock_hold(struct gfs2_glock *gl)
{
 GLOCK_BUG_ON(gl, __lockref_is_dead(&gl->gl_lockref));
 lockref_get(&gl->gl_lockref);
}
