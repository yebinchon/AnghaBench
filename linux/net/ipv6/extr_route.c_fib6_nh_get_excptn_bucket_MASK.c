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
struct rt6_exception_bucket {int dummy; } ;
struct fib6_nh {int /*<<< orphan*/  rt6i_exception_bucket; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 unsigned long FIB6_EXCEPTION_BUCKET_FLUSHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rt6_exception_bucket* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rt6_exception_bucket* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct rt6_exception_bucket *FUNC3(const struct fib6_nh *nh,
						       spinlock_t *lock)
{
	struct rt6_exception_bucket *bucket;

	if (lock)
		bucket = FUNC2(nh->rt6i_exception_bucket,
						   FUNC0(lock));
	else
		bucket = FUNC1(nh->rt6i_exception_bucket);

	/* remove bucket flushed bit if set */
	if (bucket) {
		unsigned long p = (unsigned long)bucket;

		p &= ~FIB6_EXCEPTION_BUCKET_FLUSHED;
		bucket = (struct rt6_exception_bucket *)p;
	}

	return bucket;
}