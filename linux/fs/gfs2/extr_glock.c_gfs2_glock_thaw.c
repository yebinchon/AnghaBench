
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int glock_hash_walk (int ,struct gfs2_sbd*) ;
 int thaw_glock ;

void gfs2_glock_thaw(struct gfs2_sbd *sdp)
{
 glock_hash_walk(thaw_glock, sdp);
}
