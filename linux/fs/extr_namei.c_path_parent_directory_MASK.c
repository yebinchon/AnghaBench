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
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct path *path)
{
	struct dentry *old = path->dentry;
	/* rare case of legitimate dget_parent()... */
	path->dentry = FUNC0(path->dentry);
	FUNC1(old);
	if (FUNC3(!FUNC2(path)))
		return -ENOENT;
	return 0;
}