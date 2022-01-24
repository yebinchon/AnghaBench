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
struct TYPE_4__ {scalar_t__ magic; scalar_t__ owner; scalar_t__ owner_cpu; } ;
typedef  TYPE_1__ raw_spinlock_t ;

/* Variables and functions */
 scalar_t__ SPINLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,char*) ; 
 scalar_t__ current ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static inline void
FUNC2(raw_spinlock_t *lock)
{
	FUNC0(lock->magic != SPINLOCK_MAGIC, lock, "bad magic");
	FUNC0(lock->owner == current, lock, "recursion");
	FUNC0(lock->owner_cpu == FUNC1(),
							lock, "cpu recursion");
}