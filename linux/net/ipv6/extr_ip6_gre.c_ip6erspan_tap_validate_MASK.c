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
typedef  int u32 ;
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef  int __be16 ;

/* Variables and functions */
 int DIR_MASK ; 
 int DIR_OFFSET ; 
 int EINVAL ; 
 int GRE_KEY ; 
 int GRE_SEQ ; 
 int HWID_MASK ; 
 int HWID_OFFSET ; 
 int ID_MASK ; 
 size_t IFLA_GRE_COLLECT_METADATA ; 
 size_t IFLA_GRE_ERSPAN_DIR ; 
 size_t IFLA_GRE_ERSPAN_HWID ; 
 size_t IFLA_GRE_ERSPAN_INDEX ; 
 size_t IFLA_GRE_ERSPAN_VER ; 
 size_t IFLA_GRE_IFLAGS ; 
 size_t IFLA_GRE_IKEY ; 
 size_t IFLA_GRE_OFLAGS ; 
 size_t IFLA_GRE_OKEY ; 
 int INDEX_MASK ; 
 int FUNC0 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nlattr *tb[], struct nlattr *data[],
				  struct netlink_ext_ack *extack)
{
	__be16 flags = 0;
	int ret, ver = 0;

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
	    (FUNC6(FUNC2(data[IFLA_GRE_IKEY])) & ~ID_MASK))
		return -EINVAL;

	if (data[IFLA_GRE_OKEY] &&
	    (FUNC6(FUNC2(data[IFLA_GRE_OKEY])) & ~ID_MASK))
		return -EINVAL;

	if (data[IFLA_GRE_ERSPAN_VER]) {
		ver = FUNC5(data[IFLA_GRE_ERSPAN_VER]);
		if (ver != 1 && ver != 2)
			return -EINVAL;
	}

	if (ver == 1) {
		if (data[IFLA_GRE_ERSPAN_INDEX]) {
			u32 index = FUNC4(data[IFLA_GRE_ERSPAN_INDEX]);

			if (index & ~INDEX_MASK)
				return -EINVAL;
		}
	} else if (ver == 2) {
		if (data[IFLA_GRE_ERSPAN_DIR]) {
			u16 dir = FUNC5(data[IFLA_GRE_ERSPAN_DIR]);

			if (dir & ~(DIR_MASK >> DIR_OFFSET))
				return -EINVAL;
		}

		if (data[IFLA_GRE_ERSPAN_HWID]) {
			u16 hwid = FUNC3(data[IFLA_GRE_ERSPAN_HWID]);

			if (hwid & ~(HWID_MASK >> HWID_OFFSET))
				return -EINVAL;
		}
	}

	return 0;
}