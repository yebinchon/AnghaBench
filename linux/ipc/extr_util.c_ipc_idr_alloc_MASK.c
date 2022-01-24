#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kern_ipc_perm {scalar_t__ seq; int id; } ;
struct ipc_ids {int next_id; int in_use; int last_idx; scalar_t__ seq; int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct kern_ipc_perm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct kern_ipc_perm*,int) ; 
 int /*<<< orphan*/  ipc_min_cycle ; 
 int /*<<< orphan*/  ipc_mni ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct ipc_ids *ids, struct kern_ipc_perm *new)
{
	int idx, next_id = -1;

#ifdef CONFIG_CHECKPOINT_RESTORE
	next_id = ids->next_id;
	ids->next_id = -1;
#endif

	/*
	 * As soon as a new object is inserted into the idr,
	 * ipc_obtain_object_idr() or ipc_obtain_object_check() can find it,
	 * and the lockless preparations for ipc operations can start.
	 * This means especially: permission checks, audit calls, allocation
	 * of undo structures, ...
	 *
	 * Thus the object must be fully initialized, and if something fails,
	 * then the full tear-down sequence must be followed.
	 * (i.e.: set new->deleted, reduce refcount, call_rcu())
	 */

	if (next_id < 0) { /* !CHECKPOINT_RESTORE or next_id is unset */
		int max_idx;

		max_idx = FUNC7(ids->in_use*3/2, ipc_min_cycle);
		max_idx = FUNC8(max_idx, ipc_mni);

		/* allocate the idx, with a NULL struct kern_ipc_perm */
		idx = FUNC1(&ids->ipcs_idr, NULL, 0, max_idx,
					GFP_NOWAIT);

		if (idx >= 0) {
			/*
			 * idx got allocated successfully.
			 * Now calculate the sequence number and set the
			 * pointer for real.
			 */
			if (idx <= ids->last_idx) {
				ids->seq++;
				if (ids->seq >= FUNC3())
					ids->seq = 0;
			}
			ids->last_idx = idx;

			new->seq = ids->seq;
			/* no need for smp_wmb(), this is done
			 * inside idr_replace, as part of
			 * rcu_assign_pointer
			 */
			FUNC2(&ids->ipcs_idr, new, idx);
		}
	} else {
		new->seq = FUNC5(next_id);
		idx = FUNC0(&ids->ipcs_idr, new, FUNC4(next_id),
				0, GFP_NOWAIT);
	}
	if (idx >= 0)
		new->id = (new->seq << FUNC6()) + idx;
	return idx;
}