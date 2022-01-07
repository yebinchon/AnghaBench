
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {int sd_wdack; TYPE_2__ sd_lockstruct; } ;
typedef int ssize_t ;
struct TYPE_3__ {int lm_proto_name; } ;


 int EINVAL ;
 int complete (int *) ;
 int kstrtoint (char const*,int ,int*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t wdack_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 int ret, val;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 if ((val == 1) &&
     !strcmp(sdp->sd_lockstruct.ls_ops->lm_proto_name, "lock_dlm"))
  complete(&sdp->sd_wdack);
 else
  return -EINVAL;
 return len;
}
