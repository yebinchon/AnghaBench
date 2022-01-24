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
struct file_lock {int /*<<< orphan*/ * fl_blocker; int /*<<< orphan*/  fl_blocked_member; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 

__attribute__((used)) static void FUNC2(struct file_lock *waiter)
{
	FUNC1(waiter);
	FUNC0(&waiter->fl_blocked_member);
	waiter->fl_blocker = NULL;
}