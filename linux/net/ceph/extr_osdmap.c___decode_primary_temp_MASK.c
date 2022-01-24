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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ osd; } ;
struct ceph_pg_mapping {TYPE_1__ primary_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ceph_pg_mapping* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ceph_pg_mapping* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 

__attribute__((used)) static struct ceph_pg_mapping *FUNC3(void **p, void *end,
						     bool incremental)
{
	struct ceph_pg_mapping *pg;
	u32 osd;

	FUNC2(p, end, osd, e_inval);
	if (osd == (u32)-1 && incremental)
		return NULL;	/* new_primary_temp: -1 to remove */

	pg = FUNC1(0);
	if (!pg)
		return FUNC0(-ENOMEM);

	pg->primary_temp.osd = osd;
	return pg;

e_inval:
	return FUNC0(-EINVAL);
}