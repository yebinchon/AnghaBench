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
struct rpc_cred {TYPE_2__* cr_auth; int /*<<< orphan*/  cr_flags; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_4__ {TYPE_1__* au_credcache; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAUTH_CRED_HASHED ; 
 int FUNC0 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct rpc_cred *cred)
{
	spinlock_t *cache_lock;
	bool ret;

	if (!FUNC3(RPCAUTH_CRED_HASHED, &cred->cr_flags))
		return false;
	cache_lock = &cred->cr_auth->au_credcache->lock;
	FUNC1(cache_lock);
	ret = FUNC0(cred);
	FUNC2(cache_lock);
	return ret;
}