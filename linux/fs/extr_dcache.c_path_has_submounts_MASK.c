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
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct check_mount {int mounted; int /*<<< orphan*/  mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct check_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  path_check_mount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(const struct path *parent)
{
	struct check_mount data = { .mnt = parent->mnt, .mounted = 0 };

	FUNC1(&mount_lock);
	FUNC0(parent->dentry, &data, path_check_mount);
	FUNC2(&mount_lock);

	return data.mounted;
}