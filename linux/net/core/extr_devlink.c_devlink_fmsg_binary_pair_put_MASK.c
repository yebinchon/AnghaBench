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
typedef  int /*<<< orphan*/  u16 ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct devlink_fmsg*,void const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*,char const*) ; 

int FUNC3(struct devlink_fmsg *fmsg, const char *name,
				 const void *value, u16 value_len)
{
	int err;

	err = FUNC2(fmsg, name);
	if (err)
		return err;

	err = FUNC0(fmsg, value, value_len);
	if (err)
		return err;

	err = FUNC1(fmsg);
	if (err)
		return err;

	return 0;
}