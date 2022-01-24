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
struct key {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct key *key, bool intr)
{
	int ret;

	ret = FUNC2(&key->flags, KEY_FLAG_USER_CONSTRUCT,
			  intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
	if (ret)
		return -ERESTARTSYS;
	ret = FUNC0(key);
	if (ret < 0)
		return ret;
	return FUNC1(key);
}