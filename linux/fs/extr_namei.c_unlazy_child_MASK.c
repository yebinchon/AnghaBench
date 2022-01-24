#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {int flags; TYPE_2__ path; int /*<<< orphan*/  m_seq; } ;
struct dentry {int /*<<< orphan*/  d_seq; int /*<<< orphan*/  d_lockref; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_lockref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECHILD ; 
 int LOOKUP_RCU ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct nameidata *nd, struct dentry *dentry, unsigned seq)
{
	FUNC0(!(nd->flags & LOOKUP_RCU));

	nd->flags &= ~LOOKUP_RCU;
	if (FUNC8(!FUNC2(nd)))
		goto out2;
	if (FUNC8(!FUNC3(nd->path.mnt, nd->m_seq)))
		goto out2;
	if (FUNC8(!FUNC5(&nd->path.dentry->d_lockref)))
		goto out1;

	/*
	 * We need to move both the parent and the dentry from the RCU domain
	 * to be properly refcounted. And the sequence number in the dentry
	 * validates *both* dentry counters, since we checked the sequence
	 * number of the parent after we got the child sequence number. So we
	 * know the parent must still be valid if the child sequence number is
	 */
	if (FUNC8(!FUNC5(&dentry->d_lockref)))
		goto out;
	if (FUNC8(FUNC7(&dentry->d_seq, seq)))
		goto out_dput;
	/*
	 * Sequence counts matched. Now make sure that the root is
	 * still valid and get it if required.
	 */
	if (FUNC8(!FUNC4(nd)))
		goto out_dput;
	FUNC6();
	return 0;

out2:
	nd->path.mnt = NULL;
out1:
	nd->path.dentry = NULL;
out:
	FUNC6();
	return -ECHILD;
out_dput:
	FUNC6();
	FUNC1(dentry);
	return -ECHILD;
}