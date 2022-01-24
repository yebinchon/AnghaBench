#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  iov_base; } ;
struct ceph_buffer {TYPE_1__ vec; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  bad ; 
 struct ceph_buffer* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct ceph_buffer **b, void **p, void *end)
{
	size_t len;

	FUNC3(p, end, sizeof(u32), bad);
	len = FUNC1(p);
	FUNC4("decode_buffer len %d\n", (int)len);
	FUNC3(p, end, len, bad);
	*b = FUNC0(len, GFP_NOFS);
	if (!*b)
		return -ENOMEM;
	FUNC2(p, (*b)->vec.iov_base, len);
	return 0;
bad:
	return -EINVAL;
}