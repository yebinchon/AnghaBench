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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_pg_pool_info {int /*<<< orphan*/  id; } ;
struct ceph_osdmap {int /*<<< orphan*/  pg_pools; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ceph_pg_pool_info*) ; 
 struct ceph_pg_pool_info* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void**,void*,struct ceph_pg_pool_info*) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_pg_pool_info*) ; 
 struct ceph_pg_pool_info* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void **p, void *end, struct ceph_osdmap *map,
			  bool incremental)
{
	u32 n;

	FUNC2(p, end, n, e_inval);
	while (n--) {
		struct ceph_pg_pool_info *pi;
		u64 pool;
		int ret;

		FUNC3(p, end, pool, e_inval);

		pi = FUNC1(&map->pg_pools, pool);
		if (!incremental || !pi) {
			pi = FUNC6(sizeof(*pi), GFP_NOFS);
			if (!pi)
				return -ENOMEM;

			pi->id = pool;

			ret = FUNC0(&map->pg_pools, pi);
			if (ret) {
				FUNC5(pi);
				return ret;
			}
		}

		ret = FUNC4(p, end, pi);
		if (ret)
			return ret;
	}

	return 0;

e_inval:
	return -EINVAL;
}