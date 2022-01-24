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
struct rb_root {int dummy; } ;
struct ceph_pg {int dummy; } ;
struct ceph_pg_mapping {struct ceph_pg pgid; } ;
typedef  struct ceph_pg_mapping* (* decode_mapping_fn_t ) (void**,void*,int) ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ceph_pg_mapping*) ; 
 int FUNC1 (struct ceph_pg_mapping*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void**,void*,struct ceph_pg*) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC5 (struct rb_root*,struct ceph_pg_mapping*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_pg_mapping*) ; 
 int /*<<< orphan*/  FUNC7 (struct rb_root*,struct ceph_pg_mapping*) ; 
 struct ceph_pg_mapping* FUNC8 (struct rb_root*,struct ceph_pg*) ; 

__attribute__((used)) static int FUNC9(void **p, void *end, struct rb_root *mapping_root,
			     decode_mapping_fn_t fn, bool incremental)
{
	u32 n;

	FUNC2(!incremental && !fn);

	FUNC3(p, end, n, e_inval);
	while (n--) {
		struct ceph_pg_mapping *pg;
		struct ceph_pg pgid;
		int ret;

		ret = FUNC4(p, end, &pgid);
		if (ret)
			return ret;

		pg = FUNC8(mapping_root, &pgid);
		if (pg) {
			FUNC2(!incremental);
			FUNC5(mapping_root, pg);
			FUNC6(pg);
		}

		if (fn) {
			pg = fn(p, end, incremental);
			if (FUNC0(pg))
				return FUNC1(pg);

			if (pg) {
				pg->pgid = pgid; /* struct */
				FUNC7(mapping_root, pg);
			}
		}
	}

	return 0;

e_inval:
	return -EINVAL;
}