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
typedef  union futex_key {int dummy; } futex_key ;
struct futex_q {union futex_key key; int /*<<< orphan*/ * lock_ptr; int /*<<< orphan*/  list; } ;
struct futex_hash_bucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union futex_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct futex_hash_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (struct futex_hash_bucket*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
void FUNC6(struct futex_q *q, struct futex_hash_bucket *hb1,
		   struct futex_hash_bucket *hb2, union futex_key *key2)
{

	/*
	 * If key1 and key2 hash to the same bucket, no need to
	 * requeue.
	 */
	if (FUNC3(&hb1->chain != &hb2->chain)) {
		FUNC5(&q->list, &hb1->chain);
		FUNC1(hb1);
		FUNC2(hb2);
		FUNC4(&q->list, &hb2->chain);
		q->lock_ptr = &hb2->lock;
	}
	FUNC0(key2);
	q->key = *key2;
}