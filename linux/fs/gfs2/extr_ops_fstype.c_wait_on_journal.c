
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {int sd_flags; TYPE_2__ sd_lockstruct; } ;
struct TYPE_3__ {int * lm_mount; } ;


 int EINTR ;
 int SDF_NOJOURNALID ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ wait_on_bit (int *,int ,int ) ;

__attribute__((used)) static int wait_on_journal(struct gfs2_sbd *sdp)
{
 if (sdp->sd_lockstruct.ls_ops->lm_mount == ((void*)0))
  return 0;

 return wait_on_bit(&sdp->sd_flags, SDF_NOJOURNALID, TASK_INTERRUPTIBLE)
  ? -EINTR : 0;
}
