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
struct amp_mgr {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct amp_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amp_mgr_destroy ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct amp_mgr *mgr)
{
	FUNC0("mgr %p orig refcnt %d", mgr, FUNC2(&mgr->kref));

	return FUNC1(&mgr->kref, &amp_mgr_destroy);
}