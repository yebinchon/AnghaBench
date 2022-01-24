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
struct ceph_object_locator {TYPE_1__* pool_ns; int /*<<< orphan*/  pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_object_locator const*) ; 
 int /*<<< orphan*/  FUNC4 (void**,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void **p, void *end,
			const struct ceph_object_locator *oloc)
{
	FUNC4(p, 5, 4, FUNC3(oloc));
	FUNC1(p, oloc->pool);
	FUNC0(p, -1); /* preferred */
	FUNC0(p, 0);  /* key len */
	if (oloc->pool_ns)
		FUNC2(p, end, oloc->pool_ns->str,
				   oloc->pool_ns->len);
	else
		FUNC0(p, 0);
}