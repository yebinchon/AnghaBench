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
struct ip_set_type {int /*<<< orphan*/  revision_min; int /*<<< orphan*/  family; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(struct ip_set_type *type)
{
	FUNC2();
	if (!FUNC1(type->name, type->family, type->revision_min)) {
		FUNC6("ip_set type %s, family %s with revision min %u not registered\n",
			type->name, FUNC0(type->family),
			type->revision_min);
		FUNC3();
		return;
	}
	FUNC4(&type->list);
	FUNC5("type %s, family %s with revision min %u unregistered.\n",
		 type->name, FUNC0(type->family), type->revision_min);
	FUNC3();

	FUNC7();
}