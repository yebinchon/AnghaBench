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
struct ocfs2_super {int slot_num; int /*<<< orphan*/  recovery_lock; int /*<<< orphan*/  recovery_event; int /*<<< orphan*/ * recovery_thread_task; int /*<<< orphan*/  journal; int /*<<< orphan*/  osb_lock; TYPE_1__* sb; int /*<<< orphan*/  max_slots; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {int* rm_entries; scalar_t__ rm_used; } ;
struct ocfs2_quota_recovery {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct ocfs2_quota_recovery*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_FEATURE_RO_COMPAT_GRPQUOTA ; 
 int /*<<< orphan*/  OCFS2_FEATURE_RO_COMPAT_USRQUOTA ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORPHAN_NEED_TRUNCATE ; 
 int /*<<< orphan*/  ORPHAN_NO_NEED_TRUNCATE ; 
 int FUNC4 (struct ocfs2_quota_recovery*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ocfs2_quota_recovery* FUNC13 (struct ocfs2_super*,int) ; 
 int FUNC14 (struct ocfs2_super*) ; 
 int FUNC15 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*) ; 
 int FUNC17 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ocfs2_quota_recovery*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct ocfs2_super*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,int) ; 
 int FUNC23 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*,int) ; 
 int FUNC25 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(void *arg)
{
	int status, node_num, slot_num;
	struct ocfs2_super *osb = arg;
	struct ocfs2_recovery_map *rm = osb->recovery_map;
	int *rm_quota = NULL;
	int rm_quota_used = 0, i;
	struct ocfs2_quota_recovery *qrec;

	/* Whether the quota supported. */
	int quota_enabled = FUNC3(osb->sb,
			OCFS2_FEATURE_RO_COMPAT_USRQUOTA)
		|| FUNC3(osb->sb,
			OCFS2_FEATURE_RO_COMPAT_GRPQUOTA);

	status = FUNC25(osb);
	if (status < 0) {
		goto bail;
	}

	if (quota_enabled) {
		rm_quota = FUNC6(osb->max_slots, sizeof(int), GFP_NOFS);
		if (!rm_quota) {
			status = -ENOMEM;
			goto bail;
		}
	}
restart:
	status = FUNC23(osb, 1);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC15(osb);
	if (status < 0)
		FUNC10(status);

	/* queue recovery for our own slot */
	FUNC18(osb->journal, osb->slot_num, NULL,
					NULL, NULL, ORPHAN_NO_NEED_TRUNCATE);

	FUNC26(&osb->osb_lock);
	while (rm->rm_used) {
		/* It's always safe to remove entry zero, as we won't
		 * clear it until ocfs2_recover_node() has succeeded. */
		node_num = rm->rm_entries[0];
		FUNC27(&osb->osb_lock);
		slot_num = FUNC17(osb, node_num);
		FUNC29(node_num, slot_num);
		if (slot_num == -ENOENT) {
			status = 0;
			goto skip_recovery;
		}

		/* It is a bit subtle with quota recovery. We cannot do it
		 * immediately because we have to obtain cluster locks from
		 * quota files and we also don't want to just skip it because
		 * then quota usage would be out of sync until some node takes
		 * the slot. So we remember which nodes need quota recovery
		 * and when everything else is done, we recover quotas. */
		if (quota_enabled) {
			for (i = 0; i < rm_quota_used
					&& rm_quota[i] != slot_num; i++)
				;

			if (i == rm_quota_used)
				rm_quota[rm_quota_used++] = slot_num;
		}

		status = FUNC20(osb, node_num, slot_num);
skip_recovery:
		if (!status) {
			FUNC22(osb, node_num);
		} else {
			FUNC9(ML_ERROR,
			     "Error %d recovering node %d on device (%u,%u)!\n",
			     status, node_num,
			     FUNC1(osb->sb->s_dev), FUNC2(osb->sb->s_dev));
			FUNC9(ML_ERROR, "Volume requires unmount.\n");
		}

		FUNC26(&osb->osb_lock);
	}
	FUNC27(&osb->osb_lock);
	FUNC28(status);

	/* Refresh all journal recovery generations from disk */
	status = FUNC14(osb);
	status = (status == -EROFS) ? 0 : status;
	if (status < 0)
		FUNC10(status);

	/* Now it is right time to recover quotas... We have to do this under
	 * superblock lock so that no one can start using the slot (and crash)
	 * before we recover it */
	if (quota_enabled) {
		for (i = 0; i < rm_quota_used; i++) {
			qrec = FUNC13(osb, rm_quota[i]);
			if (FUNC0(qrec)) {
				status = FUNC4(qrec);
				FUNC10(status);
				continue;
			}
			FUNC18(osb->journal,
					rm_quota[i],
					NULL, NULL, qrec,
					ORPHAN_NEED_TRUNCATE);
		}
	}

	FUNC24(osb, 1);

	/* queue recovery for offline slots */
	FUNC19(osb, ORPHAN_NEED_TRUNCATE);

bail:
	FUNC11(&osb->recovery_lock);
	if (!status && !FUNC21(osb)) {
		FUNC12(&osb->recovery_lock);
		goto restart;
	}

	FUNC16(osb);
	osb->recovery_thread_task = NULL;
	FUNC8(); /* sync with ocfs2_recovery_thread_running */
	FUNC30(&osb->recovery_event);

	FUNC12(&osb->recovery_lock);

	if (quota_enabled)
		FUNC7(rm_quota);

	/* no one is callint kthread_stop() for us so the kthread() api
	 * requires that we call do_exit().  And it isn't exported, but
	 * complete_and_exit() seems to be a minimal wrapper around it. */
	FUNC5(NULL, status);
}