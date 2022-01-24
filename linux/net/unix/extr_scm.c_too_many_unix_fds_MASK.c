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
struct user_struct {scalar_t__ unix_inflight; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct user_struct* FUNC1 () ; 
 scalar_t__ FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline bool FUNC4(struct task_struct *p)
{
	struct user_struct *user = FUNC1();

	if (FUNC3(user->unix_inflight > FUNC2(p, RLIMIT_NOFILE)))
		return !FUNC0(CAP_SYS_RESOURCE) && !FUNC0(CAP_SYS_ADMIN);
	return false;
}