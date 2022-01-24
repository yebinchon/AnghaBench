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
struct fuse_conn {int /*<<< orphan*/  num_waiting; int /*<<< orphan*/  blocked_waitq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct fuse_conn *fc)
{
	/* matches implicit memory barrier in fuse_drop_waiting() */
	FUNC1();
	FUNC2(fc->blocked_waitq, FUNC0(&fc->num_waiting) == 0);
}