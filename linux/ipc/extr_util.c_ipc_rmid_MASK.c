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
struct kern_ipc_perm {int deleted; int /*<<< orphan*/  id; } ;
struct ipc_ids {int max_idx; int /*<<< orphan*/  ipcs_idr; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_ids*,struct kern_ipc_perm*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
	int idx = FUNC3(ipcp->id);

	FUNC1(&ids->ipcs_idr, idx);
	FUNC2(ids, ipcp);
	ids->in_use--;
	ipcp->deleted = true;

	if (FUNC4(idx == ids->max_idx)) {
		do {
			idx--;
			if (idx == -1)
				break;
		} while (!FUNC0(&ids->ipcs_idr, idx));
		ids->max_idx = idx;
	}
}