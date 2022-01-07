
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gt_quota_scale_num; int gt_quota_scale_den; } ;
struct gfs2_sbd {TYPE_1__ sd_tune; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t quota_scale_show(struct gfs2_sbd *sdp, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u %u\n",
   sdp->sd_tune.gt_quota_scale_num,
   sdp->sd_tune.gt_quota_scale_den);
}
