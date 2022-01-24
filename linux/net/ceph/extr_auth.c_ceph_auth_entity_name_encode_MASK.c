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

/* Variables and functions */
 int CEPH_ENTITY_TYPE_CLIENT ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,char const*,int) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *name, void **p, void *end)
{
	int len = FUNC2(name);

	if (*p + 2*sizeof(u32) + len > end)
		return -ERANGE;
	FUNC0(p, CEPH_ENTITY_TYPE_CLIENT);
	FUNC0(p, len);
	FUNC1(p, name, len);
	return 0;
}