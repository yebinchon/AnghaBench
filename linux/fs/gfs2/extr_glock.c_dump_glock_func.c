
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;


 int dump_glock (int *,struct gfs2_glock*,int) ;

__attribute__((used)) static void dump_glock_func(struct gfs2_glock *gl)
{
 dump_glock(((void*)0), gl, 1);
}
