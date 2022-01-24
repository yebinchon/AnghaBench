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
struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct kern_ipc_perm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct kern_ipc_perm* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 

struct kern_ipc_perm *FUNC3(struct ipc_ids *ids, int id)
{
	struct kern_ipc_perm *out;
	int idx = FUNC2(id);

	out = FUNC1(&ids->ipcs_idr, idx);
	if (!out)
		return FUNC0(-EINVAL);

	return out;
}