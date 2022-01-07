
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_glock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 TYPE_1__* current ;
 int gfs2_glock_put (struct gfs2_glock*) ;
 int gfs2_glock_queue_put (struct gfs2_glock*) ;

__attribute__((used)) static void gfs2_glock_put_eventually(struct gfs2_glock *gl)
{
 if (current->flags & PF_MEMALLOC)
  gfs2_glock_queue_put(gl);
 else
  gfs2_glock_put(gl);
}
