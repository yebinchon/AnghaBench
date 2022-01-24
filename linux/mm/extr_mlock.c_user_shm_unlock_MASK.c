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
struct user_struct {size_t locked_shm; } ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct user_struct*) ; 
 int /*<<< orphan*/  shmlock_user_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(size_t size, struct user_struct *user)
{
	FUNC1(&shmlock_user_lock);
	user->locked_shm -= (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	FUNC2(&shmlock_user_lock);
	FUNC0(user);
}