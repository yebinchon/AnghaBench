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
struct task_struct {int dummy; } ;
struct rw_semaphore {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int RWSEM_OWNER_FLAGS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct task_struct *FUNC1(struct rw_semaphore *sem)
{
	return (struct task_struct *)
		(FUNC0(&sem->owner) & ~RWSEM_OWNER_FLAGS_MASK);
}