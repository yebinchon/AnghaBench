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
struct nfs_delegation {unsigned long pagemod_limit; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; struct cred* cred; int /*<<< orphan*/  type; int /*<<< orphan*/  stateid; int /*<<< orphan*/ * inode; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_NEED_RECLAIM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cred* FUNC2 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 struct nfs_delegation* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC12(struct inode *inode, const struct cred *cred,
				  fmode_t type,
				  const nfs4_stateid *stateid,
				  unsigned long pagemod_limit)
{
	struct nfs_delegation *delegation;
	const struct cred *oldcred = NULL;

	FUNC7();
	delegation = FUNC6(FUNC0(inode)->delegation);
	if (delegation != NULL) {
		FUNC9(&delegation->lock);
		if (delegation->inode != NULL) {
			FUNC3(&delegation->stateid, stateid);
			delegation->type = type;
			delegation->pagemod_limit = pagemod_limit;
			oldcred = delegation->cred;
			delegation->cred = FUNC2(cred);
			FUNC1(NFS_DELEGATION_NEED_RECLAIM,
				  &delegation->flags);
			FUNC10(&delegation->lock);
			FUNC8();
			FUNC5(oldcred);
			FUNC11(inode, type);
			return;
		}
		/* We appear to have raced with a delegation return. */
		FUNC10(&delegation->lock);
	}
	FUNC8();
	FUNC4(inode, cred, type, stateid, pagemod_limit);
}