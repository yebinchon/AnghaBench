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
struct rpc_authops {int /*<<< orphan*/  owner; } ;
typedef  size_t rpc_authflavor_t ;

/* Variables and functions */
 size_t RPC_AUTH_MAXFLAVOR ; 
 int /*<<< orphan*/ * auth_flavors ; 
 struct rpc_authops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct rpc_authops *
FUNC5(rpc_authflavor_t flavor)
{
	const struct rpc_authops *ops;

	if (flavor >= RPC_AUTH_MAXFLAVOR)
		return NULL;

	FUNC1();
	ops = FUNC0(auth_flavors[flavor]);
	if (ops == NULL) {
		FUNC2();
		FUNC3("rpc-auth-%u", flavor);
		FUNC1();
		ops = FUNC0(auth_flavors[flavor]);
		if (ops == NULL)
			goto out;
	}
	if (!FUNC4(ops->owner))
		ops = NULL;
out:
	FUNC2();
	return ops;
}