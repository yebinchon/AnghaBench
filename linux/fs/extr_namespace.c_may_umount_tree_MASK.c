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
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 struct mount* FUNC3 (struct mount*,struct mount*) ; 
 struct mount* FUNC4 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct vfsmount *m)
{
	struct mount *mnt = FUNC4(m);
	int actual_refs = 0;
	int minimum_refs = 0;
	struct mount *p;
	FUNC0(!m);

	/* write lock needed for mnt_get_count */
	FUNC1();
	for (p = mnt; p; p = FUNC3(p, mnt)) {
		actual_refs += FUNC2(p);
		minimum_refs += 2;
	}
	FUNC5();

	if (actual_refs > minimum_refs)
		return 0;

	return 1;
}