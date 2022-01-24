#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  raw_spinlock_t ;
struct TYPE_4__ {scalar_t__ counter; } ;
typedef  TYPE_1__ atomic64_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

s64 FUNC3(atomic64_t *v, s64 a, s64 u)
{
	unsigned long flags;
	raw_spinlock_t *lock = FUNC0(v);
	s64 val;

	FUNC1(lock, flags);
	val = v->counter;
	if (val != u)
		v->counter += a;
	FUNC2(lock, flags);

	return val;
}