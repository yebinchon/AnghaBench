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
struct kparam_string {scalar_t__ maxlen; int /*<<< orphan*/  string; } ;
struct kernel_param {int /*<<< orphan*/  name; struct kparam_string* str; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(const char *val, const struct kernel_param *kp)
{
	const struct kparam_string *kps = kp->str;

	if (FUNC2(val)+1 > kps->maxlen) {
		FUNC0("%s: string doesn't fit in %u chars.\n",
		       kp->name, kps->maxlen-1);
		return -ENOSPC;
	}
	FUNC1(kps->string, val);
	return 0;
}