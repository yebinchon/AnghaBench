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
typedef  size_t u8 ;
struct gre_protocol {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 size_t GREPROTO_MAX ; 
 struct gre_protocol const* FUNC0 (struct gre_protocol const**,struct gre_protocol const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gre_proto ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(const struct gre_protocol *proto, u8 version)
{
	int ret;

	if (version >= GREPROTO_MAX)
		return -EINVAL;

	ret = (FUNC0((const struct gre_protocol **)&gre_proto[version], proto, NULL) == proto) ?
		0 : -EBUSY;

	if (ret)
		return ret;

	FUNC1();
	return 0;
}