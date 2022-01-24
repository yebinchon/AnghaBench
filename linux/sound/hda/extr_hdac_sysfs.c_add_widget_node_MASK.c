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
struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct kobject*,struct kobject*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 struct kobject* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kobject*,struct attribute_group const*) ; 
 int /*<<< orphan*/  widget_ktype ; 

__attribute__((used)) static int FUNC5(struct kobject *parent, hda_nid_t nid,
			   const struct attribute_group *group,
			   struct kobject **res)
{
	struct kobject *kobj = FUNC3(sizeof(*kobj), GFP_KERNEL);
	int err;

	if (!kobj)
		return -ENOMEM;
	FUNC1(kobj, &widget_ktype);
	err = FUNC0(kobj, parent, "%02x", nid);
	if (err < 0)
		return err;
	err = FUNC4(kobj, group);
	if (err < 0) {
		FUNC2(kobj);
		return err;
	}

	*res = kobj;
	return 0;
}