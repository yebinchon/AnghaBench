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
struct rpc_cred {int /*<<< orphan*/  cr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAUTH_CRED_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_cred*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct rpc_cred *cred)
{

	if (FUNC2(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0)
		FUNC1(cred);
	FUNC0(cred);
}