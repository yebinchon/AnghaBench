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
struct vfsmount {int dummy; } ;
struct mount {scalar_t__ mnt_expiry_mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (struct vfsmount*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void FUNC3(struct vfsmount *mnt)
{
	if (mnt) {
		struct mount *m = FUNC1(mnt);
		/* avoid cacheline pingpong, hope gcc doesn't get "smart" */
		if (FUNC2(m->mnt_expiry_mark))
			m->mnt_expiry_mark = 0;
		FUNC0(m);
	}
}