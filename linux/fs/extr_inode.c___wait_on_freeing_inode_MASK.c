#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __I_NEW ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inode_hash_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ wait ; 

__attribute__((used)) static void FUNC7(struct inode *inode)
{
	wait_queue_head_t *wq;
	FUNC0(wait, &inode->i_state, __I_NEW);
	wq = FUNC1(&inode->i_state, __I_NEW);
	FUNC3(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
	FUNC6(&inode->i_lock);
	FUNC6(&inode_hash_lock);
	FUNC4();
	FUNC2(wq, &wait.wq_entry);
	FUNC5(&inode_hash_lock);
}