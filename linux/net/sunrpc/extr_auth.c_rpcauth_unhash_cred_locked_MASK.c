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
struct rpc_cred {int /*<<< orphan*/  cr_hash; int /*<<< orphan*/  cr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAUTH_CRED_HASHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(struct rpc_cred *cred)
{
	if (!FUNC1(RPCAUTH_CRED_HASHED, &cred->cr_flags))
		return false;
	FUNC0(&cred->cr_hash);
	return true;
}