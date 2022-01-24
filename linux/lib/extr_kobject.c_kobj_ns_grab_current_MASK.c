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
typedef  enum kobj_ns_type { ____Placeholder_kobj_ns_type } kobj_ns_type ;
struct TYPE_2__ {void* (* grab_current_ns ) () ;} ;

/* Variables and functions */
 int KOBJ_NS_TYPES ; 
 int KOBJ_NS_TYPE_NONE ; 
 TYPE_1__** kobj_ns_ops_tbl ; 
 int /*<<< orphan*/  kobj_ns_type_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 

void *FUNC3(enum kobj_ns_type type)
{
	void *ns = NULL;

	FUNC0(&kobj_ns_type_lock);
	if ((type > KOBJ_NS_TYPE_NONE) && (type < KOBJ_NS_TYPES) &&
	    kobj_ns_ops_tbl[type])
		ns = kobj_ns_ops_tbl[type]->grab_current_ns();
	FUNC1(&kobj_ns_type_lock);

	return ns;
}