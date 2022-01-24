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
struct napi_struct {size_t napi_id; int /*<<< orphan*/  napi_hash_node; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MIN_NAPI_ID ; 
 int /*<<< orphan*/  NAPI_STATE_HASHED ; 
 int /*<<< orphan*/  NAPI_STATE_NO_BUSY_POLL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ napi_gen_id ; 
 int /*<<< orphan*/ * napi_hash ; 
 int /*<<< orphan*/  napi_hash_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct napi_struct *napi)
{
	if (FUNC6(NAPI_STATE_NO_BUSY_POLL, &napi->state) ||
	    FUNC5(NAPI_STATE_HASHED, &napi->state))
		return;

	FUNC3(&napi_hash_lock);

	/* 0..NR_CPUS range is reserved for sender_cpu use */
	do {
		if (FUNC7(++napi_gen_id < MIN_NAPI_ID))
			napi_gen_id = MIN_NAPI_ID;
	} while (FUNC2(napi_gen_id));
	napi->napi_id = napi_gen_id;

	FUNC1(&napi->napi_hash_node,
			   &napi_hash[napi->napi_id % FUNC0(napi_hash)]);

	FUNC4(&napi_hash_lock);
}