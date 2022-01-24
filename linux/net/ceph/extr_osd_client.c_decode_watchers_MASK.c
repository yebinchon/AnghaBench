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
struct ceph_watch_item {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (void**) ; 
 int FUNC1 (void**,void*,int,char*,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (void**,void*,struct ceph_watch_item*) ; 
 struct ceph_watch_item* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_watch_item*) ; 

__attribute__((used)) static int FUNC5(void **p, void *end,
			   struct ceph_watch_item **watchers,
			   u32 *num_watchers)
{
	u8 struct_v;
	u32 struct_len;
	int i;
	int ret;

	ret = FUNC1(p, end, 1, "obj_list_watch_response_t",
				  &struct_v, &struct_len);
	if (ret)
		return ret;

	*num_watchers = FUNC0(p);
	*watchers = FUNC3(*num_watchers, sizeof(**watchers), GFP_NOIO);
	if (!*watchers)
		return -ENOMEM;

	for (i = 0; i < *num_watchers; i++) {
		ret = FUNC2(p, end, *watchers + i);
		if (ret) {
			FUNC4(*watchers);
			return ret;
		}
	}

	return 0;
}