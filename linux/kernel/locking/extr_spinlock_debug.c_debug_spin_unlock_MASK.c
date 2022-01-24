#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ magic; scalar_t__ owner; int owner_cpu; } ;
typedef  TYPE_1__ raw_spinlock_t ;

/* Variables and functions */
 scalar_t__ SPINLOCK_MAGIC ; 
 scalar_t__ SPINLOCK_OWNER_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,char*) ; 
 scalar_t__ current ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC3(raw_spinlock_t *lock)
{
	FUNC0(lock->magic != SPINLOCK_MAGIC, lock, "bad magic");
	FUNC0(!FUNC2(lock), lock, "already unlocked");
	FUNC0(lock->owner != current, lock, "wrong owner");
	FUNC0(lock->owner_cpu != FUNC1(),
							lock, "wrong CPU");
	lock->owner = SPINLOCK_OWNER_INIT;
	lock->owner_cpu = -1;
}