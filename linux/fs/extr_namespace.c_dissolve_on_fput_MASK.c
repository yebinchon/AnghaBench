#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct mnt_namespace {int dummy; } ;
struct TYPE_3__ {struct mnt_namespace* mnt_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMOUNT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct mnt_namespace*) ; 
 scalar_t__ FUNC1 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct vfsmount *mnt)
{
	struct mnt_namespace *ns;
	FUNC3();
	FUNC2();
	ns = FUNC5(mnt)->mnt_ns;
	if (ns) {
		if (FUNC1(ns))
			FUNC6(FUNC5(mnt), UMOUNT_CONNECTED);
		else
			ns = NULL;
	}
	FUNC7();
	FUNC4();
	if (ns)
		FUNC0(ns);
}