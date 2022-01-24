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
struct ip_set_type {scalar_t__ protocol; int /*<<< orphan*/  revision_max; int /*<<< orphan*/  revision_min; int /*<<< orphan*/  family; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IPSET_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_set_type_list ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

int
FUNC7(struct ip_set_type *type)
{
	int ret = 0;

	if (type->protocol != IPSET_PROTOCOL) {
		FUNC6("ip_set type %s, family %s, revision %u:%u uses wrong protocol version %u (want %u)\n",
			type->name, FUNC0(type->family),
			type->revision_min, type->revision_max,
			type->protocol, IPSET_PROTOCOL);
		return -EINVAL;
	}

	FUNC2();
	if (FUNC1(type->name, type->family, type->revision_min)) {
		/* Duplicate! */
		FUNC6("ip_set type %s, family %s with revision min %u already registered!\n",
			type->name, FUNC0(type->family),
			type->revision_min);
		FUNC3();
		return -EINVAL;
	}
	FUNC4(&type->list, &ip_set_type_list);
	FUNC5("type %s, family %s, revision %u:%u registered.\n",
		 type->name, FUNC0(type->family),
		 type->revision_min, type->revision_max);
	FUNC3();

	return ret;
}