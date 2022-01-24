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
struct ipc_ids {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct kern_ipc_perm* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kern_ipc_perm*) ; 
 scalar_t__ FUNC2 (struct kern_ipc_perm*,int) ; 
 struct kern_ipc_perm* FUNC3 (struct ipc_ids*,int) ; 

struct kern_ipc_perm *FUNC4(struct ipc_ids *ids, int id)
{
	struct kern_ipc_perm *out = FUNC3(ids, id);

	if (FUNC1(out))
		goto out;

	if (FUNC2(out, id))
		return FUNC0(-EINVAL);
out:
	return out;
}