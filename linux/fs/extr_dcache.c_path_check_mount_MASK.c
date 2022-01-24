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
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;
struct check_mount {int mounted; int /*<<< orphan*/  mnt; } ;
typedef  enum d_walk_ret { ____Placeholder_d_walk_ret } d_walk_ret ;

/* Variables and functions */
 int D_WALK_CONTINUE ; 
 int D_WALK_QUIT ; 
 scalar_t__ FUNC0 (struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static enum d_walk_ret FUNC3(void *data, struct dentry *dentry)
{
	struct check_mount *info = data;
	struct path path = { .mnt = info->mnt, .dentry = dentry };

	if (FUNC2(!FUNC1(dentry)))
		return D_WALK_CONTINUE;
	if (FUNC0(&path)) {
		info->mounted = 1;
		return D_WALK_QUIT;
	}
	return D_WALK_CONTINUE;
}