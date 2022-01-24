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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef  int __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int GRE_KEY ; 
 int GRE_SEQ ; 
 int ID_MASK ; 
 size_t IFLA_GRE_COLLECT_METADATA ; 
 size_t IFLA_GRE_IFLAGS ; 
 size_t IFLA_GRE_IKEY ; 
 size_t IFLA_GRE_OFLAGS ; 
 size_t IFLA_GRE_OKEY ; 
 int FUNC0 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nlattr *tb[], struct nlattr *data[],
			   struct netlink_ext_ack *extack)
{
	__be16 flags = 0;
	int ret;

	if (!data)
		return 0;

	ret = FUNC0(tb, data, extack);
	if (ret)
		return ret;

	/* ERSPAN should only have GRE sequence and key flag */
	if (data[IFLA_GRE_OFLAGS])
		flags |= FUNC1(data[IFLA_GRE_OFLAGS]);
	if (data[IFLA_GRE_IFLAGS])
		flags |= FUNC1(data[IFLA_GRE_IFLAGS]);
	if (!data[IFLA_GRE_COLLECT_METADATA] &&
	    flags != (GRE_SEQ | GRE_KEY))
		return -EINVAL;

	/* ERSPAN Session ID only has 10-bit. Since we reuse
	 * 32-bit key field as ID, check it's range.
	 */
	if (data[IFLA_GRE_IKEY] &&
	    (FUNC3(FUNC2(data[IFLA_GRE_IKEY])) & ~ID_MASK))
		return -EINVAL;

	if (data[IFLA_GRE_OKEY] &&
	    (FUNC3(FUNC2(data[IFLA_GRE_OKEY])) & ~ID_MASK))
		return -EINVAL;

	return 0;
}