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
struct rw_semaphore {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 unsigned long RWSEM_NONSPINNABLE ; 
 unsigned long RWSEM_READER_OWNED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long*,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct rw_semaphore *sem)
{
	unsigned long owner = FUNC0(&sem->owner);

	do {
		if (!(owner & RWSEM_READER_OWNED))
			break;
		if (owner & RWSEM_NONSPINNABLE)
			break;
	} while (!FUNC1(&sem->owner, &owner,
					  owner | RWSEM_NONSPINNABLE));
}