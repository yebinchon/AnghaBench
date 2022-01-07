
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
struct TYPE_7__ {int qfs_nextents; int qfs_nblks; scalar_t__ qfs_ino; } ;
struct TYPE_6__ {int qfs_nextents; int qfs_nblks; scalar_t__ qfs_ino; } ;
struct qc_state {TYPE_4__* s_state; TYPE_3__ qs_gquota; TYPE_2__ qs_uquota; int qs_iwarnlimit; int qs_bwarnlimit; int qs_rtbtimelimit; int qs_itimelimit; int qs_btimelimit; int s_incoredqs; int qs_incoredqs; int qs_flags; int qs_version; } ;
struct fs_quota_stat {TYPE_4__* s_state; TYPE_3__ qs_gquota; TYPE_2__ qs_uquota; int qs_iwarnlimit; int qs_bwarnlimit; int qs_rtbtimelimit; int qs_itimelimit; int qs_btimelimit; int s_incoredqs; int qs_incoredqs; int qs_flags; int qs_version; } ;
struct TYPE_8__ {int flags; int nextents; int blocks; scalar_t__ ino; int ino_warnlimit; int spc_warnlimit; int rt_spc_timelimit; int ino_timelimit; int spc_timelimit; } ;
struct TYPE_5__ {int (* get_state ) (struct super_block*,struct qc_state*) ;} ;


 int ENOSYS ;
 int FS_QSTAT_VERSION ;
 size_t GRPQUOTA ;
 size_t PRJQUOTA ;
 int QCI_ACCT_ENABLED ;
 size_t USRQUOTA ;
 int memset (struct qc_state*,int ,int) ;
 int quota_state_to_flags (struct qc_state*) ;
 int stub1 (struct super_block*,struct qc_state*) ;

__attribute__((used)) static int quota_getstate(struct super_block *sb, int type,
     struct fs_quota_stat *fqs)
{
 struct qc_state state;
 int ret;

 memset(&state, 0, sizeof (struct qc_state));
 ret = sb->s_qcop->get_state(sb, &state);
 if (ret < 0)
  return ret;

 memset(fqs, 0, sizeof(*fqs));
 fqs->qs_version = FS_QSTAT_VERSION;
 fqs->qs_flags = quota_state_to_flags(&state);

 if (!fqs->qs_flags)
  return -ENOSYS;
 fqs->qs_incoredqs = state.s_incoredqs;

 fqs->qs_btimelimit = state.s_state[type].spc_timelimit;
 fqs->qs_itimelimit = state.s_state[type].ino_timelimit;
 fqs->qs_rtbtimelimit = state.s_state[type].rt_spc_timelimit;
 fqs->qs_bwarnlimit = state.s_state[type].spc_warnlimit;
 fqs->qs_iwarnlimit = state.s_state[type].ino_warnlimit;


 if (state.s_state[USRQUOTA].ino) {
  fqs->qs_uquota.qfs_ino = state.s_state[USRQUOTA].ino;
  fqs->qs_uquota.qfs_nblks = state.s_state[USRQUOTA].blocks;
  fqs->qs_uquota.qfs_nextents = state.s_state[USRQUOTA].nextents;
 }
 if (state.s_state[GRPQUOTA].ino) {
  fqs->qs_gquota.qfs_ino = state.s_state[GRPQUOTA].ino;
  fqs->qs_gquota.qfs_nblks = state.s_state[GRPQUOTA].blocks;
  fqs->qs_gquota.qfs_nextents = state.s_state[GRPQUOTA].nextents;
 }
 if (state.s_state[PRJQUOTA].ino) {





  if (!(state.s_state[GRPQUOTA].flags & QCI_ACCT_ENABLED)) {
   fqs->qs_gquota.qfs_ino = state.s_state[PRJQUOTA].ino;
   fqs->qs_gquota.qfs_nblks =
     state.s_state[PRJQUOTA].blocks;
   fqs->qs_gquota.qfs_nextents =
     state.s_state[PRJQUOTA].nextents;
  }
 }
 return 0;
}
