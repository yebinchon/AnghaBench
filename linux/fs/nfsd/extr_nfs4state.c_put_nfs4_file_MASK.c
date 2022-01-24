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
struct nfs4_file {int /*<<< orphan*/  fi_rcu; int /*<<< orphan*/  fi_delegations; int /*<<< orphan*/  fi_clnt_odstate; int /*<<< orphan*/  fi_hash; int /*<<< orphan*/  fi_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd4_free_file_rcu ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 

void
FUNC7(struct nfs4_file *fi)
{
	FUNC4(&state_lock);

	if (FUNC5(&fi->fi_ref, &state_lock)) {
		FUNC2(&fi->fi_hash);
		FUNC6(&state_lock);
		FUNC0(!FUNC3(&fi->fi_clnt_odstate));
		FUNC0(!FUNC3(&fi->fi_delegations));
		FUNC1(&fi->fi_rcu, nfsd4_free_file_rcu);
	}
}