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
struct TYPE_2__ {struct dentry* dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {int flags; scalar_t__ inode; TYPE_1__ path; int /*<<< orphan*/  seq; } ;
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECHILD ; 
 int LOOKUP_RCU ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct nameidata *nd)
{
	struct dentry *parent = nd->path.dentry;

	FUNC0(!(nd->flags & LOOKUP_RCU));

	nd->flags &= ~LOOKUP_RCU;
	if (FUNC5(!FUNC1(nd)))
		goto out1;
	if (FUNC5(!FUNC2(nd, &nd->path, nd->seq)))
		goto out;
	if (FUNC5(!FUNC3(nd)))
		goto out;
	FUNC4();
	FUNC0(nd->inode != parent->d_inode);
	return 0;

out1:
	nd->path.mnt = NULL;
	nd->path.dentry = NULL;
out:
	FUNC4();
	return -ECHILD;
}