#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_rwlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  dep_map; } ;

/* Variables and functions */
 scalar_t__ _RET_IP_ ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(pthread_rwlock_t *rwlock)
{
	int r;

        FUNC1();

	FUNC3(&FUNC0(rwlock)->dep_map, 0, 1, 0, 1, NULL, (unsigned long)_RET_IP_);
	r = FUNC2(rwlock);
	if (r)
                FUNC4(&FUNC0(rwlock)->dep_map, 0, (unsigned long)_RET_IP_);

	return r;
}