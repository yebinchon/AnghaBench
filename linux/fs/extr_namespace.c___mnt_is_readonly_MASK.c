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
struct vfsmount {int mnt_flags; int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int MNT_READONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct vfsmount *mnt)
{
	return (mnt->mnt_flags & MNT_READONLY) || FUNC0(mnt->mnt_sb);
}