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
struct mountpoint {int dummy; } ;
struct mount {int /*<<< orphan*/  mnt_hash; int /*<<< orphan*/  mnt_mp_list; int /*<<< orphan*/  mnt_child; struct mount* mnt_parent; struct mountpoint* mnt_mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*,struct mount*,struct mountpoint*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mountpoint*) ; 

void FUNC6(struct mount *parent, struct mountpoint *mp, struct mount *mnt)
{
	struct mountpoint *old_mp = mnt->mnt_mp;
	struct mount *old_parent = mnt->mnt_parent;

	FUNC3(&mnt->mnt_child);
	FUNC1(&mnt->mnt_mp_list);
	FUNC2(&mnt->mnt_hash);

	FUNC0(mnt, parent, mp);

	FUNC5(old_mp);
	FUNC4(old_parent, -1);
}