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
struct mount {int /*<<< orphan*/  mnt_mounts; int /*<<< orphan*/  mnt_child; int /*<<< orphan*/  mnt_mountpoint; int /*<<< orphan*/  mnt; int /*<<< orphan*/  mnt_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mount *mnt, struct mount *parent)
{
	FUNC0(&mnt->mnt_hash,
			   FUNC2(&parent->mnt, mnt->mnt_mountpoint));
	FUNC1(&mnt->mnt_child, &parent->mnt_mounts);
}