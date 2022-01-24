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
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static bool FUNC9(struct inode *inode,
		const nfs4_stateid *stateid)
{
	struct nfs_delegation *delegation;
	nfs4_stateid tmp;
	bool ret = false;

	FUNC7();
	delegation = FUNC6(FUNC0(inode)->delegation);
	if (delegation == NULL)
		goto out;
	if (stateid == NULL) {
		FUNC2(&tmp, &delegation->stateid);
		stateid = &tmp;
	} else if (!FUNC3(stateid, &delegation->stateid))
		goto out;
	FUNC5(FUNC1(inode), delegation);
	ret = true;
out:
	FUNC8();
	if (ret)
		FUNC4(inode, stateid);
	return ret;
}