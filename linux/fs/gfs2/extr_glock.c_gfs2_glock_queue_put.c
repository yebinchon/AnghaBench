
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;


 int gfs2_glock_queue_work (struct gfs2_glock*,int ) ;

void gfs2_glock_queue_put(struct gfs2_glock *gl)
{
 gfs2_glock_queue_work(gl, 0);
}
