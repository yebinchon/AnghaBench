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
struct path {struct dentry* dentry; TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct path*) ; 

__attribute__((used)) static void FUNC3(struct path *path)
{
	struct dentry *dp;

	while (path->dentry == path->mnt->mnt_root && FUNC2(path))
		;
	dp = FUNC0(path->dentry);
	FUNC1(path->dentry);
	path->dentry = dp;
}