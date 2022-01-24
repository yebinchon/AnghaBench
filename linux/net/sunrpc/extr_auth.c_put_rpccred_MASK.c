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
struct rpc_cred {TYPE_1__* cr_ops; int /*<<< orphan*/  cr_count; int /*<<< orphan*/  cr_flags; int /*<<< orphan*/  cr_expire; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* crdestroy ) (struct rpc_cred*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAUTH_CRED_HASHED ; 
 int /*<<< orphan*/  RPCAUTH_CRED_UPTODATE ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_cred*) ; 
 scalar_t__ FUNC6 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_cred*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10(struct rpc_cred *cred)
{
	if (cred == NULL)
		return;
	FUNC0();
	if (FUNC2(&cred->cr_count))
		goto destroy;
	if (FUNC3(&cred->cr_count) != 1 ||
	    !FUNC8(RPCAUTH_CRED_HASHED, &cred->cr_flags))
		goto out;
	if (FUNC8(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0) {
		cred->cr_expire = jiffies;
		FUNC4(cred);
		/* Race breaker */
		if (FUNC9(!FUNC8(RPCAUTH_CRED_HASHED, &cred->cr_flags)))
			FUNC5(cred);
	} else if (FUNC6(cred)) {
		FUNC5(cred);
		if (FUNC2(&cred->cr_count))
			goto destroy;
	}
out:
	FUNC1();
	return;
destroy:
	FUNC1();
	cred->cr_ops->crdestroy(cred);
}