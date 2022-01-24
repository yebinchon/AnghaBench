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
struct fnhe_hash_bucket {int /*<<< orphan*/  fnhe_rth_output; int /*<<< orphan*/  fnhe_rth_input; int /*<<< orphan*/  fnhe_next; int /*<<< orphan*/  chain; } ;
struct fib_nh_exception {int /*<<< orphan*/  fnhe_rth_output; int /*<<< orphan*/  fnhe_rth_input; int /*<<< orphan*/  fnhe_next; int /*<<< orphan*/  chain; } ;
struct fib_nh_common {int /*<<< orphan*/  nhc_exceptions; } ;

/* Variables and functions */
 int FNHE_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct fnhe_hash_bucket*) ; 
 struct fnhe_hash_bucket* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fib_nh_common *nhc)
{
	struct fnhe_hash_bucket *hash;
	int i;

	hash = FUNC1(nhc->nhc_exceptions, 1);
	if (!hash)
		return;
	for (i = 0; i < FNHE_HASH_SIZE; i++) {
		struct fib_nh_exception *fnhe;

		fnhe = FUNC1(hash[i].chain, 1);
		while (fnhe) {
			struct fib_nh_exception *next;

			next = FUNC1(fnhe->fnhe_next, 1);

			FUNC2(&fnhe->fnhe_rth_input);
			FUNC2(&fnhe->fnhe_rth_output);

			FUNC0(fnhe);

			fnhe = next;
		}
	}
	FUNC0(hash);
}