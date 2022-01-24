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
struct TYPE_2__ {int /*<<< orphan*/  mnt_root; } ;
struct mount {TYPE_1__ mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct mount* FUNC2 (struct mount*,struct mount*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct mount *subtree)
{
	struct mount *p;
	bool ret = false;

	FUNC0();
	for (p = subtree; p; p = FUNC2(p, subtree))
		if (FUNC1(p->mnt.mnt_root))
			goto out;

	ret = true;
out:
	FUNC3();
	return ret;
}