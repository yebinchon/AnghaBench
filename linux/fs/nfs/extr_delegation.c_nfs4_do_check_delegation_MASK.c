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
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
typedef  int fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct nfs_delegation*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, fmode_t flags, bool mark)
{
	struct nfs_delegation *delegation;
	int ret = 0;

	flags &= FMODE_READ|FMODE_WRITE;
	FUNC4();
	delegation = FUNC3(FUNC0(inode)->delegation);
	if (FUNC1(delegation, flags)) {
		if (mark)
			FUNC2(delegation);
		ret = 1;
	}
	FUNC5();
	return ret;
}