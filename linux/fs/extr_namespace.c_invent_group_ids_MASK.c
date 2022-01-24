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
struct mount {int /*<<< orphan*/  mnt_group_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,struct mount*) ; 
 int FUNC2 (struct mount*) ; 
 struct mount* FUNC3 (struct mount*,struct mount*) ; 

__attribute__((used)) static int FUNC4(struct mount *mnt, bool recurse)
{
	struct mount *p;

	for (p = mnt; p; p = recurse ? FUNC3(p, mnt) : NULL) {
		if (!p->mnt_group_id && !FUNC0(p)) {
			int err = FUNC2(p);
			if (err) {
				FUNC1(mnt, p);
				return err;
			}
		}
	}

	return 0;
}