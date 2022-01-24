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
struct ceph_entity_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (void**,void*,struct ceph_entity_addr*) ; 
 int FUNC2 (void**,void*,struct ceph_entity_addr*) ; 

int
FUNC3(void **p, void *end, struct ceph_entity_addr *addr)
{
	u8 marker;

	FUNC0(p, end, marker, bad);
	if (marker == 1)
		return FUNC2(p, end, addr);
	else if (marker == 0)
		return FUNC1(p, end, addr);
bad:
	return -EINVAL;
}