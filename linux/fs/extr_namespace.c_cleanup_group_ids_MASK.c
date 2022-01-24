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
struct mount {scalar_t__ mnt_group_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 struct mount* FUNC2 (struct mount*,struct mount*) ; 

__attribute__((used)) static void FUNC3(struct mount *mnt, struct mount *end)
{
	struct mount *p;

	for (p = mnt; p != end; p = FUNC2(p, mnt)) {
		if (p->mnt_group_id && !FUNC0(p))
			FUNC1(p);
	}
}