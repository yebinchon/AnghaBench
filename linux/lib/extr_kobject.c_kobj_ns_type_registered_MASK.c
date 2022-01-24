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
typedef  enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;

/* Variables and functions */
 int KOBJ_NS_TYPES ; 
 int KOBJ_NS_TYPE_NONE ; 
 int /*<<< orphan*/ ** kobj_ns_ops_tbl ; 
 int /*<<< orphan*/  kobj_ns_type_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(enum kobj_ns_type type)
{
	int registered = 0;

	FUNC0(&kobj_ns_type_lock);
	if ((type > KOBJ_NS_TYPE_NONE) && (type < KOBJ_NS_TYPES))
		registered = kobj_ns_ops_tbl[type] != NULL;
	FUNC1(&kobj_ns_type_lock);

	return registered;
}