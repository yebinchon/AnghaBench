
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {scalar_t__ gl_state; } ;


 scalar_t__ LM_ST_DEFERRED ;

__attribute__((used)) static inline int gfs2_glock_is_held_dfrd(struct gfs2_glock *gl)
{
 return gl->gl_state == LM_ST_DEFERRED;
}
