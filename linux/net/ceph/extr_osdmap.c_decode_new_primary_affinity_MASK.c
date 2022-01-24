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
typedef  int /*<<< orphan*/  u32 ;
struct ceph_osdmap {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ceph_osdmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void **p, void *end,
				       struct ceph_osdmap *map)
{
	u32 n;

	FUNC0(p, end, n, e_inval);
	while (n--) {
		u32 osd, aff;
		int ret;

		FUNC0(p, end, osd, e_inval);
		FUNC0(p, end, aff, e_inval);

		ret = FUNC2(map, osd, aff);
		if (ret)
			return ret;

		FUNC1("osd%d primary-affinity 0x%x\n", osd, aff);
	}

	return 0;

e_inval:
	return -EINVAL;
}