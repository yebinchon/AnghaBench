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
typedef  size_t u32 ;
struct fnhe_hash_bucket {int /*<<< orphan*/  chain; } ;
struct fib_nh_exception {scalar_t__ fnhe_daddr; scalar_t__ fnhe_expires; int /*<<< orphan*/  fnhe_next; } ;
struct fib_nh_common {int /*<<< orphan*/  nhc_exceptions; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fib_nh_common*,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct fib_nh_exception *FUNC4(struct fib_nh_common *nhc,
					       __be32 daddr)
{
	struct fnhe_hash_bucket *hash = FUNC2(nhc->nhc_exceptions);
	struct fib_nh_exception *fnhe;
	u32 hval;

	if (!hash)
		return NULL;

	hval = FUNC0(daddr);

	for (fnhe = FUNC2(hash[hval].chain); fnhe;
	     fnhe = FUNC2(fnhe->fnhe_next)) {
		if (fnhe->fnhe_daddr == daddr) {
			if (fnhe->fnhe_expires &&
			    FUNC3(jiffies, fnhe->fnhe_expires)) {
				FUNC1(nhc, daddr);
				break;
			}
			return fnhe;
		}
	}
	return NULL;
}