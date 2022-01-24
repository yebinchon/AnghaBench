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
struct napi_struct {int /*<<< orphan*/  napi_hash_node; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAPI_STATE_HASHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  napi_hash_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC4(struct napi_struct *napi)
{
	bool rcu_sync_needed = false;

	FUNC1(&napi_hash_lock);

	if (FUNC3(NAPI_STATE_HASHED, &napi->state)) {
		rcu_sync_needed = true;
		FUNC0(&napi->napi_hash_node);
	}
	FUNC2(&napi_hash_lock);
	return rcu_sync_needed;
}