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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kern_ipc_perm*) ; 
 int FUNC1 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  msg_queue_alloc_security ; 
 int /*<<< orphan*/  FUNC2 (struct kern_ipc_perm*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct kern_ipc_perm *msq)
{
	int rc = FUNC1(msq);

	if (FUNC3(rc))
		return rc;
	rc = FUNC0(msg_queue_alloc_security, 0, msq);
	if (FUNC3(rc))
		FUNC2(msq);
	return rc;
}