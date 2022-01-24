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
struct fnhe_hash_bucket {int /*<<< orphan*/  chain; } ;
struct fib_nh_exception {int /*<<< orphan*/  fnhe_stamp; int /*<<< orphan*/  fnhe_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib_nh_exception*) ; 
 struct fib_nh_exception* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fib_nh_exception *FUNC3(struct fnhe_hash_bucket *hash)
{
	struct fib_nh_exception *fnhe, *oldest;

	oldest = FUNC1(hash->chain);
	for (fnhe = FUNC1(oldest->fnhe_next); fnhe;
	     fnhe = FUNC1(fnhe->fnhe_next)) {
		if (FUNC2(fnhe->fnhe_stamp, oldest->fnhe_stamp))
			oldest = fnhe;
	}
	FUNC0(oldest);
	return oldest;
}