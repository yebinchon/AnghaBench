#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {int /*<<< orphan*/  dentry; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mask; } ;
struct audit_parent {TYPE_1__ mark; int /*<<< orphan*/  watches; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_FS_WATCH ; 
 int ENOMEM ; 
 struct audit_parent* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_parent*) ; 
 int /*<<< orphan*/  audit_watch_group ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct audit_parent* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct audit_parent *FUNC8(struct path *path)
{
	struct inode *inode = FUNC3(path->dentry);
	struct audit_parent *parent;
	int ret;

	parent = FUNC6(sizeof(*parent), GFP_KERNEL);
	if (FUNC7(!parent))
		return FUNC0(-ENOMEM);

	FUNC1(&parent->watches);

	FUNC5(&parent->mark, audit_watch_group);
	parent->mark.mask = AUDIT_FS_WATCH;
	ret = FUNC4(&parent->mark, inode, 0);
	if (ret < 0) {
		FUNC2(parent);
		return FUNC0(ret);
	}

	return parent;
}