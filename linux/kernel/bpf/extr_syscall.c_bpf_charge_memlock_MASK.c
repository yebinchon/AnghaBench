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
typedef  int /*<<< orphan*/  u32 ;
struct user_struct {int /*<<< orphan*/  locked_vm; } ;

/* Variables and functions */
 int EPERM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct user_struct *user, u32 pages)
{
	unsigned long memlock_limit = FUNC2(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

	if (FUNC0(pages, &user->locked_vm) > memlock_limit) {
		FUNC1(pages, &user->locked_vm);
		return -EPERM;
	}
	return 0;
}