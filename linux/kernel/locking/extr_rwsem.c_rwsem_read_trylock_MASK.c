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
struct rw_semaphore {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RWSEM_READER_BIAS ; 
 long RWSEM_READ_FAILED_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rw_semaphore*) ; 

__attribute__((used)) static inline bool FUNC3(struct rw_semaphore *sem)
{
	long cnt = FUNC1(RWSEM_READER_BIAS, &sem->count);
	if (FUNC0(cnt < 0))
		FUNC2(sem);
	return !(cnt & RWSEM_READ_FAILED_MASK);
}