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
struct nlm_wait {int /*<<< orphan*/  b_list; int /*<<< orphan*/  b_status; int /*<<< orphan*/  b_wait; struct file_lock* b_lock; struct nlm_host* b_host; } ;
struct nlm_host {int dummy; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nlm_wait* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_blocked ; 
 int /*<<< orphan*/  nlm_blocked_lock ; 
 int /*<<< orphan*/  nlm_lck_blocked ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct nlm_wait *FUNC5(struct nlm_host *host, struct file_lock *fl)
{
	struct nlm_wait *block;

	block = FUNC1(sizeof(*block), GFP_KERNEL);
	if (block != NULL) {
		block->b_host = host;
		block->b_lock = fl;
		FUNC0(&block->b_wait);
		block->b_status = nlm_lck_blocked;

		FUNC3(&nlm_blocked_lock);
		FUNC2(&block->b_list, &nlm_blocked);
		FUNC4(&nlm_blocked_lock);
	}
	return block;
}