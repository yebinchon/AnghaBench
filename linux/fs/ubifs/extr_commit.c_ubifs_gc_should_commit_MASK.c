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
struct ubifs_info {scalar_t__ cmt_state; int /*<<< orphan*/  cs_lock; } ;

/* Variables and functions */
 scalar_t__ COMMIT_BACKGROUND ; 
 scalar_t__ COMMIT_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ubifs_info *c)
{
	int ret = 0;

	FUNC1(&c->cs_lock);
	if (c->cmt_state == COMMIT_BACKGROUND) {
		FUNC0("commit required now");
		c->cmt_state = COMMIT_REQUIRED;
	} else
		FUNC0("commit not requested");
	if (c->cmt_state == COMMIT_REQUIRED)
		ret = 1;
	FUNC2(&c->cs_lock);
	return ret;
}