#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct nfs_client {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
struct TYPE_5__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_4__ {struct nfs_client* nfs_client; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct inode *inode,
		const nfs4_stateid *stateid)
{
	struct nfs_client *clp = FUNC1(inode)->nfs_client;
	struct nfs_delegation *delegation;
	bool found = false;

	FUNC6();
	delegation = FUNC5(FUNC0(inode)->delegation);
	if (delegation &&
	    FUNC3(&delegation->stateid, stateid)) {
		FUNC4(FUNC1(inode), delegation);
		found = true;
	}
	FUNC7();
	if (found)
		FUNC2(clp);
}