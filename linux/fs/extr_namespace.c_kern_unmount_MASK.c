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
struct vfsmount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mnt_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 TYPE_1__* FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct vfsmount *mnt)
{
	/* release long term mount so mount point can be released */
	if (!FUNC0(mnt)) {
		FUNC2(mnt)->mnt_ns = NULL;
		FUNC3();	/* yecchhh... */
		FUNC1(mnt);
	}
}