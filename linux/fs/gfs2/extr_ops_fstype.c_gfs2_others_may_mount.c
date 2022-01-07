
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {int sd_kobj; TYPE_2__ sd_lockstruct; } ;
struct TYPE_3__ {int (* lm_first_done ) (struct gfs2_sbd*) ;} ;


 int KOBJ_CHANGE ;
 int fs_info (struct gfs2_sbd*,char*) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int stub1 (struct gfs2_sbd*) ;

__attribute__((used)) static void gfs2_others_may_mount(struct gfs2_sbd *sdp)
{
 char *message = "FIRSTMOUNT=Done";
 char *envp[] = { message, ((void*)0) };

 fs_info(sdp, "first mount done, others may mount\n");

 if (sdp->sd_lockstruct.ls_ops->lm_first_done)
  sdp->sd_lockstruct.ls_ops->lm_first_done(sdp);

 kobject_uevent_env(&sdp->sd_kobj, KOBJ_CHANGE, envp);
}
