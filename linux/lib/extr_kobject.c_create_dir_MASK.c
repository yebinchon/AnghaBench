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
struct kobject {int /*<<< orphan*/  sd; } ;
struct kobj_type {int /*<<< orphan*/  default_groups; } ;
struct kobj_ns_type_operations {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ KOBJ_NS_TYPES ; 
 scalar_t__ KOBJ_NS_TYPE_NONE ; 
 struct kobj_type* FUNC1 (struct kobject*) ; 
 struct kobj_ns_type_operations* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*) ; 
 int FUNC5 (struct kobject*) ; 
 int FUNC6 (struct kobject*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kobject*) ; 

__attribute__((used)) static int FUNC11(struct kobject *kobj)
{
	const struct kobj_type *ktype = FUNC1(kobj);
	const struct kobj_ns_type_operations *ops;
	int error;

	error = FUNC6(kobj, FUNC4(kobj));
	if (error)
		return error;

	error = FUNC5(kobj);
	if (error) {
		FUNC10(kobj);
		return error;
	}

	if (ktype) {
		error = FUNC7(kobj, ktype->default_groups);
		if (error) {
			FUNC10(kobj);
			return error;
		}
	}

	/*
	 * @kobj->sd may be deleted by an ancestor going away.  Hold an
	 * extra reference so that it stays until @kobj is gone.
	 */
	FUNC9(kobj->sd);

	/*
	 * If @kobj has ns_ops, its children need to be filtered based on
	 * their namespace tags.  Enable namespace support on @kobj->sd.
	 */
	ops = FUNC2(kobj);
	if (ops) {
		FUNC0(ops->type <= KOBJ_NS_TYPE_NONE);
		FUNC0(ops->type >= KOBJ_NS_TYPES);
		FUNC0(!FUNC3(ops->type));

		FUNC8(kobj->sd);
	}

	return 0;
}