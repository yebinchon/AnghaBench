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
struct css_set {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC0 (struct css_set*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct css_set *cset)
{
	unsigned long flags;

	/*
	 * Ensure that the refcount doesn't hit zero while any readers
	 * can see it. Similar to atomic_dec_and_lock(), but for an
	 * rwlock
	 */
	if (FUNC1(&cset->refcount))
		return;

	FUNC2(&css_set_lock, flags);
	FUNC0(cset);
	FUNC3(&css_set_lock, flags);
}