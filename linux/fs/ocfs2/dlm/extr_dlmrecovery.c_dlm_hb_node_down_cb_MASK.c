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
struct o2nm_node {int dummy; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(struct o2nm_node *node, int idx, void *data)
{
	struct dlm_ctxt *dlm = data;

	if (!FUNC2(dlm))
		return;

	/*
	 * This will notify any dlm users that a node in our domain
	 * went away without notifying us first.
	 */
	if (FUNC6(idx, dlm->domain_map))
		FUNC1(dlm, idx);

	FUNC4(&dlm->spinlock);
	FUNC0(dlm, idx);
	FUNC5(&dlm->spinlock);

	FUNC3(dlm);
}