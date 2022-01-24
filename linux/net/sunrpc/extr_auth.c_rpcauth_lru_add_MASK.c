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
struct rpc_cred {int /*<<< orphan*/  cr_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_credcache_lock ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rpc_cred *cred)
{
	if (!FUNC0(&cred->cr_lru))
		return;
	FUNC2(&rpc_credcache_lock);
	FUNC1(cred);
	FUNC3(&rpc_credcache_lock);
}