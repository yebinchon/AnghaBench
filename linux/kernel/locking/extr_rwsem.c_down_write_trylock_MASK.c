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
struct rw_semaphore {int /*<<< orphan*/  dep_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC0 (struct rw_semaphore*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct rw_semaphore *sem)
{
	int ret = FUNC0(sem);

	if (ret == 1)
		FUNC1(&sem->dep_map, 0, 1, _RET_IP_);

	return ret;
}