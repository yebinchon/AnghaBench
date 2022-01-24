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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ceph_locker {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 char* FUNC4 (void**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_locker*,int) ; 
 int FUNC6 (void**,void*,int,char*,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (void**,void*,struct ceph_locker*) ; 
 struct ceph_locker* FUNC8 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void **p, void *end, u8 *type, char **tag,
			  struct ceph_locker **lockers, u32 *num_lockers)
{
	u8 struct_v;
	u32 struct_len;
	char *s;
	int i;
	int ret;

	ret = FUNC6(p, end, 1, "cls_lock_get_info_reply",
				  &struct_v, &struct_len);
	if (ret)
		return ret;

	*num_lockers = FUNC2(p);
	*lockers = FUNC8(*num_lockers, sizeof(**lockers), GFP_NOIO);
	if (!*lockers)
		return -ENOMEM;

	for (i = 0; i < *num_lockers; i++) {
		ret = FUNC7(p, end, *lockers + i);
		if (ret)
			goto err_free_lockers;
	}

	*type = FUNC3(p);
	s = FUNC4(p, end, NULL, GFP_NOIO);
	if (FUNC0(s)) {
		ret = FUNC1(s);
		goto err_free_lockers;
	}

	*tag = s;
	return 0;

err_free_lockers:
	FUNC5(*lockers, *num_lockers);
	return ret;
}