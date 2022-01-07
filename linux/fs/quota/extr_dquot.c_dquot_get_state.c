
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quota_info {TYPE_1__** files; struct mem_dqinfo* info; } ;
struct qc_type_state {int nextents; int blocks; int ino; int ino_timelimit; int spc_timelimit; int flags; } ;
struct qc_state {struct qc_type_state* s_state; } ;
struct mem_dqinfo {int dqi_flags; int dqi_igrace; int dqi_bgrace; } ;
struct TYPE_2__ {int i_blocks; int i_ino; } ;


 int DQF_ROOT_SQUASH ;
 int DQF_SYS_FILE ;
 int MAXQUOTAS ;
 int QCI_ACCT_ENABLED ;
 int QCI_LIMITS_ENFORCED ;
 int QCI_ROOT_SQUASH ;
 int QCI_SYSFILE ;
 int dq_data_lock ;
 int memset (struct qc_state*,int ,int) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int sb_has_quota_active (struct super_block*,int) ;
 scalar_t__ sb_has_quota_limits_enabled (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dquot_get_state(struct super_block *sb, struct qc_state *state)
{
 struct mem_dqinfo *mi;
 struct qc_type_state *tstate;
 struct quota_info *dqopt = sb_dqopt(sb);
 int type;

 memset(state, 0, sizeof(*state));
 for (type = 0; type < MAXQUOTAS; type++) {
  if (!sb_has_quota_active(sb, type))
   continue;
  tstate = state->s_state + type;
  mi = sb_dqopt(sb)->info + type;
  tstate->flags = QCI_ACCT_ENABLED;
  spin_lock(&dq_data_lock);
  if (mi->dqi_flags & DQF_SYS_FILE)
   tstate->flags |= QCI_SYSFILE;
  if (mi->dqi_flags & DQF_ROOT_SQUASH)
   tstate->flags |= QCI_ROOT_SQUASH;
  if (sb_has_quota_limits_enabled(sb, type))
   tstate->flags |= QCI_LIMITS_ENFORCED;
  tstate->spc_timelimit = mi->dqi_bgrace;
  tstate->ino_timelimit = mi->dqi_igrace;
  tstate->ino = dqopt->files[type]->i_ino;
  tstate->blocks = dqopt->files[type]->i_blocks;
  tstate->nextents = 1;
  spin_unlock(&dq_data_lock);
 }
 return 0;
}
