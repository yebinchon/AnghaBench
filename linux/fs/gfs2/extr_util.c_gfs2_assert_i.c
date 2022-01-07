
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int fs_emerg (struct gfs2_sbd*,char*) ;

void gfs2_assert_i(struct gfs2_sbd *sdp)
{
 fs_emerg(sdp, "fatal assertion failed\n");
}
