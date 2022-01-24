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
struct mountpoint {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_root; } ;
struct mount {struct mountpoint* mnt_mp; int /*<<< orphan*/  mnt_mp_list; int /*<<< orphan*/  mnt_hash; int /*<<< orphan*/  mnt_child; TYPE_1__ mnt; int /*<<< orphan*/  mnt_mountpoint; struct mount* mnt_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mountpoint *FUNC3(struct mount *mnt)
{
	struct mountpoint *mp;
	mnt->mnt_parent = mnt;
	mnt->mnt_mountpoint = mnt->mnt.mnt_root;
	FUNC2(&mnt->mnt_child);
	FUNC1(&mnt->mnt_hash);
	FUNC0(&mnt->mnt_mp_list);
	mp = mnt->mnt_mp;
	mnt->mnt_mp = NULL;
	return mp;
}