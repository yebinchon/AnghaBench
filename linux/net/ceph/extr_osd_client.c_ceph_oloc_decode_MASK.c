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
typedef  int u8 ;
typedef  int u32 ;
struct ceph_object_locator {scalar_t__ pool_ns; void* pool; } ;
typedef  int s64 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__,void*,int) ; 
 int FUNC1 (void**) ; 
 void* FUNC2 (void**) ; 
 int FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(void **p, void *end,
			    struct ceph_object_locator *oloc)
{
	u8 struct_v, struct_cv;
	u32 len;
	void *struct_end;
	int ret = 0;

	FUNC4(p, end, 1 + 1 + 4, e_inval);
	struct_v = FUNC3(p);
	struct_cv = FUNC3(p);
	if (struct_v < 3) {
		FUNC5("got v %d < 3 cv %d of ceph_object_locator\n",
			struct_v, struct_cv);
		goto e_inval;
	}
	if (struct_cv > 6) {
		FUNC5("got v %d cv %d > 6 of ceph_object_locator\n",
			struct_v, struct_cv);
		goto e_inval;
	}
	len = FUNC1(p);
	FUNC4(p, end, len, e_inval);
	struct_end = *p + len;

	oloc->pool = FUNC2(p);
	*p += 4; /* skip preferred */

	len = FUNC1(p);
	if (len > 0) {
		FUNC5("ceph_object_locator::key is set\n");
		goto e_inval;
	}

	if (struct_v >= 5) {
		bool changed = false;

		len = FUNC1(p);
		if (len > 0) {
			FUNC4(p, end, len, e_inval);
			if (!oloc->pool_ns ||
			    FUNC0(oloc->pool_ns, *p, len))
				changed = true;
			*p += len;
		} else {
			if (oloc->pool_ns)
				changed = true;
		}
		if (changed) {
			/* redirect changes namespace */
			FUNC5("ceph_object_locator::nspace is changed\n");
			goto e_inval;
		}
	}

	if (struct_v >= 6) {
		s64 hash = FUNC2(p);
		if (hash != -1) {
			FUNC5("ceph_object_locator::hash is set\n");
			goto e_inval;
		}
	}

	/* skip the rest */
	*p = struct_end;
out:
	return ret;

e_inval:
	ret = -EINVAL;
	goto out;
}