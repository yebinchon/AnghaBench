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
struct kset_uevent_ops {int dummy; } ;
struct kset {int dummy; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kset*) ; 
 struct kset* FUNC1 (char const*,struct kset_uevent_ops const*,struct kobject*) ; 
 int FUNC2 (struct kset*) ; 

struct kset *FUNC3(const char *name,
				 const struct kset_uevent_ops *uevent_ops,
				 struct kobject *parent_kobj)
{
	struct kset *kset;
	int error;

	kset = FUNC1(name, uevent_ops, parent_kobj);
	if (!kset)
		return NULL;
	error = FUNC2(kset);
	if (error) {
		FUNC0(kset);
		return NULL;
	}
	return kset;
}