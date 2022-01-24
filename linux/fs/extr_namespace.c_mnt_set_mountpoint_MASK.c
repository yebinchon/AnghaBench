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
struct mountpoint {int /*<<< orphan*/  m_list; int /*<<< orphan*/  m_dentry; int /*<<< orphan*/  m_count; } ;
struct mount {int /*<<< orphan*/  mnt_mp_list; struct mountpoint* mnt_mp; struct mount* mnt_parent; int /*<<< orphan*/  mnt_mountpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,int) ; 

void FUNC2(struct mount *mnt,
			struct mountpoint *mp,
			struct mount *child_mnt)
{
	mp->m_count++;
	FUNC1(mnt, 1);	/* essentially, that's mntget */
	child_mnt->mnt_mountpoint = mp->m_dentry;
	child_mnt->mnt_parent = mnt;
	child_mnt->mnt_mp = mp;
	FUNC0(&child_mnt->mnt_mp_list, &mp->m_list);
}