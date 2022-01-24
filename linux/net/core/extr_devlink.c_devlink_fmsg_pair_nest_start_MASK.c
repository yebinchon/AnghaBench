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
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_FMSG_PAIR_NEST_START ; 
 int FUNC0 (struct devlink_fmsg*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_fmsg*,char const*) ; 

int FUNC2(struct devlink_fmsg *fmsg, const char *name)
{
	int err;

	err = FUNC0(fmsg, DEVLINK_ATTR_FMSG_PAIR_NEST_START);
	if (err)
		return err;

	err = FUNC1(fmsg, name);
	if (err)
		return err;

	return 0;
}