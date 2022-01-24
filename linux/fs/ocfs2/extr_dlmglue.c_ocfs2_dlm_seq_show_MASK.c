#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_4__ {scalar_t__ ls_last; } ;
struct TYPE_3__ {scalar_t__ ls_last; } ;
struct ocfs2_lock_res {scalar_t__ l_type; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_blocking; int /*<<< orphan*/  l_requested; int /*<<< orphan*/  l_ex_holders; int /*<<< orphan*/  l_ro_holders; int /*<<< orphan*/  l_unlock_action; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_name; TYPE_2__ l_lock_exmode; TYPE_1__ l_lock_prmode; int /*<<< orphan*/  l_lock_wait; } ;
struct ocfs2_dlm_seq_priv {struct ocfs2_dlm_debug* p_dlm_debug; } ;
struct ocfs2_dlm_debug {scalar_t__ d_filter_secs; } ;

/* Variables and functions */
 int DLM_LVB_LEN ; 
 int EINVAL ; 
 scalar_t__ OCFS2_DENTRY_LOCK_INO_START ; 
 int /*<<< orphan*/  OCFS2_DLM_DEBUG_STR_VERSION ; 
 int /*<<< orphan*/  OCFS2_LOCK_ID_MAX_LEN ; 
 scalar_t__ OCFS2_LOCK_TYPE_DENTRY ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_lock_res*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC17 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC18(struct seq_file *m, void *v)
{
	int i;
	char *lvb;
	struct ocfs2_lock_res *lockres = v;
#ifdef CONFIG_OCFS2_FS_STATS
	u64 now, last;
	struct ocfs2_dlm_debug *dlm_debug =
			((struct ocfs2_dlm_seq_priv *)m->private)->p_dlm_debug;
#endif

	if (!lockres)
		return -EINVAL;

#ifdef CONFIG_OCFS2_FS_STATS
	if (!lockres->l_lock_wait && dlm_debug->d_filter_secs) {
		now = ktime_to_us(ktime_get_real());
		if (lockres->l_lock_prmode.ls_last >
		    lockres->l_lock_exmode.ls_last)
			last = lockres->l_lock_prmode.ls_last;
		else
			last = lockres->l_lock_exmode.ls_last;
		/*
		 * Use d_filter_secs field to filter lock resources dump,
		 * the default d_filter_secs(0) value filters nothing,
		 * otherwise, only dump the last N seconds active lock
		 * resources.
		 */
		if (div_u64(now - last, 1000000) > dlm_debug->d_filter_secs)
			return 0;
	}
#endif

	FUNC17(m, "0x%x\t", OCFS2_DLM_DEBUG_STR_VERSION);

	if (lockres->l_type == OCFS2_LOCK_TYPE_DENTRY)
		FUNC17(m, "%.*s%08x\t", OCFS2_DENTRY_LOCK_INO_START - 1,
			   lockres->l_name,
			   (unsigned int)FUNC16(lockres));
	else
		FUNC17(m, "%.*s\t", OCFS2_LOCK_ID_MAX_LEN, lockres->l_name);

	FUNC17(m, "%d\t"
		   "0x%lx\t"
		   "0x%x\t"
		   "0x%x\t"
		   "%u\t"
		   "%u\t"
		   "%d\t"
		   "%d\t",
		   lockres->l_level,
		   lockres->l_flags,
		   lockres->l_action,
		   lockres->l_unlock_action,
		   lockres->l_ro_holders,
		   lockres->l_ex_holders,
		   lockres->l_requested,
		   lockres->l_blocking);

	/* Dump the raw LVB */
	lvb = FUNC15(&lockres->l_lksb);
	for(i = 0; i < DLM_LVB_LEN; i++)
		FUNC17(m, "0x%x\t", lvb[i]);

#ifdef CONFIG_OCFS2_FS_STATS
# define lock_num_prmode(_l)		((_l)->l_lock_prmode.ls_gets)
# define lock_num_exmode(_l)		((_l)->l_lock_exmode.ls_gets)
# define lock_num_prmode_failed(_l)	((_l)->l_lock_prmode.ls_fail)
# define lock_num_exmode_failed(_l)	((_l)->l_lock_exmode.ls_fail)
# define lock_total_prmode(_l)		((_l)->l_lock_prmode.ls_total)
# define lock_total_exmode(_l)		((_l)->l_lock_exmode.ls_total)
# define lock_max_prmode(_l)		((_l)->l_lock_prmode.ls_max)
# define lock_max_exmode(_l)		((_l)->l_lock_exmode.ls_max)
# define lock_refresh(_l)		((_l)->l_lock_refresh)
# define lock_last_prmode(_l)		((_l)->l_lock_prmode.ls_last)
# define lock_last_exmode(_l)		((_l)->l_lock_exmode.ls_last)
# define lock_wait(_l)			((_l)->l_lock_wait)
#else
# define lock_num_prmode(_l)		(0)
# define lock_num_exmode(_l)		(0)
# define lock_num_prmode_failed(_l)	(0)
# define lock_num_exmode_failed(_l)	(0)
# define lock_total_prmode(_l)		(0ULL)
# define lock_total_exmode(_l)		(0ULL)
# define lock_max_prmode(_l)		(0)
# define lock_max_exmode(_l)		(0)
# define lock_refresh(_l)		(0)
# define lock_last_prmode(_l)		(0ULL)
# define lock_last_exmode(_l)		(0ULL)
# define lock_wait(_l)			(0ULL)
#endif
	/* The following seq_print was added in version 2 of this output */
	FUNC17(m, "%u\t"
		   "%u\t"
		   "%u\t"
		   "%u\t"
		   "%llu\t"
		   "%llu\t"
		   "%u\t"
		   "%u\t"
		   "%u\t"
		   "%llu\t"
		   "%llu\t"
		   "%llu\t",
		   lock_num_prmode(lockres),
		   lock_num_exmode(lockres),
		   lock_num_prmode_failed(lockres),
		   lock_num_exmode_failed(lockres),
		   lock_total_prmode(lockres),
		   lock_total_exmode(lockres),
		   lock_max_prmode(lockres),
		   lock_max_exmode(lockres),
		   lock_refresh(lockres),
		   lock_last_prmode(lockres),
		   lock_last_exmode(lockres),
		   lock_wait(lockres));

	/* End the line */
	FUNC17(m, "\n");
	return 0;
}