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
struct ceph_osdmap {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ceph_osdmap* FUNC0 (int) ; 
 struct ceph_osdmap* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osdmap*) ; 
 int FUNC3 (void**,void*,struct ceph_osdmap*) ; 

struct ceph_osdmap *FUNC4(void **p, void *end)
{
	struct ceph_osdmap *map;
	int ret;

	map = FUNC1();
	if (!map)
		return FUNC0(-ENOMEM);

	ret = FUNC3(p, end, map);
	if (ret) {
		FUNC2(map);
		return FUNC0(ret);
	}

	return map;
}