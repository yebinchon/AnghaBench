#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct quota_info {TYPE_1__** files; struct mem_dqinfo* info; } ;
struct qc_type_state {int nextents; int /*<<< orphan*/  blocks; int /*<<< orphan*/  ino; int /*<<< orphan*/  ino_timelimit; int /*<<< orphan*/  spc_timelimit; int /*<<< orphan*/  flags; } ;
struct qc_state {struct qc_type_state* s_state; } ;
struct mem_dqinfo {int dqi_flags; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int DQF_ROOT_SQUASH ; 
 int DQF_SYS_FILE ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  QCI_ACCT_ENABLED ; 
 int /*<<< orphan*/  QCI_LIMITS_ENFORCED ; 
 int /*<<< orphan*/  QCI_ROOT_SQUASH ; 
 int /*<<< orphan*/  QCI_SYSFILE ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC0 (struct qc_state*,int /*<<< orphan*/ ,int) ; 
 struct quota_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 scalar_t__ FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct super_block *sb, struct qc_state *state)
{
	struct mem_dqinfo *mi;
	struct qc_type_state *tstate;
	struct quota_info *dqopt = FUNC1(sb);
	int type;

	FUNC0(state, 0, sizeof(*state));
	for (type = 0; type < MAXQUOTAS; type++) {
		if (!FUNC2(sb, type))
			continue;
		tstate = state->s_state + type;
		mi = FUNC1(sb)->info + type;
		tstate->flags = QCI_ACCT_ENABLED;
		FUNC4(&dq_data_lock);
		if (mi->dqi_flags & DQF_SYS_FILE)
			tstate->flags |= QCI_SYSFILE;
		if (mi->dqi_flags & DQF_ROOT_SQUASH)
			tstate->flags |= QCI_ROOT_SQUASH;
		if (FUNC3(sb, type))
			tstate->flags |= QCI_LIMITS_ENFORCED;
		tstate->spc_timelimit = mi->dqi_bgrace;
		tstate->ino_timelimit = mi->dqi_igrace;
		tstate->ino = dqopt->files[type]->i_ino;
		tstate->blocks = dqopt->files[type]->i_blocks;
		tstate->nextents = 1;	/* We don't know... */
		FUNC5(&dq_data_lock);
	}
	return 0;
}