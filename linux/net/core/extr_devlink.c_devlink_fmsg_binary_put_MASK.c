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
 int /*<<< orphan*/  NLA_BINARY ; 
 int FUNC0 (struct devlink_fmsg*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct devlink_fmsg *fmsg, const void *value,
			    u16 value_len)
{
	return FUNC0(fmsg, value, value_len, NLA_BINARY);
}