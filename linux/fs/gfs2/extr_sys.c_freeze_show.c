
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frozen; } ;
struct super_block {TYPE_1__ s_writers; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int SB_UNFROZEN ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t freeze_show(struct gfs2_sbd *sdp, char *buf)
{
 struct super_block *sb = sdp->sd_vfs;
 int frozen = (sb->s_writers.frozen == SB_UNFROZEN) ? 0 : 1;

 return snprintf(buf, PAGE_SIZE, "%d\n", frozen);
}
