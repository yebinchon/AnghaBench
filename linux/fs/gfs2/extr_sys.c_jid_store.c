
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ls_jid; TYPE_1__* ls_ops; } ;
struct TYPE_5__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {int sd_jindex_spin; int sd_flags; TYPE_3__ sd_lockstruct; TYPE_2__ sd_args; int sd_locking_init; } ;
typedef int ssize_t ;
struct TYPE_4__ {int * lm_mount; } ;


 int EBUSY ;
 int EINVAL ;
 int SDF_NOJOURNALID ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,int*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_killable (int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static ssize_t jid_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
        int jid;
 int rv;

 rv = sscanf(buf, "%d", &jid);
 if (rv != 1)
  return -EINVAL;
 rv = wait_for_completion_killable(&sdp->sd_locking_init);
 if (rv)
  return rv;
 spin_lock(&sdp->sd_jindex_spin);
 rv = -EINVAL;
 if (sdp->sd_lockstruct.ls_ops->lm_mount == ((void*)0))
  goto out;
 rv = -EBUSY;
 if (test_bit(SDF_NOJOURNALID, &sdp->sd_flags) == 0)
  goto out;
 rv = 0;
 if (sdp->sd_args.ar_spectator && jid > 0)
  rv = jid = -EINVAL;
 sdp->sd_lockstruct.ls_jid = jid;
 clear_bit(SDF_NOJOURNALID, &sdp->sd_flags);
 smp_mb__after_atomic();
 wake_up_bit(&sdp->sd_flags, SDF_NOJOURNALID);
out:
 spin_unlock(&sdp->sd_jindex_spin);
 return rv ? rv : len;
}
