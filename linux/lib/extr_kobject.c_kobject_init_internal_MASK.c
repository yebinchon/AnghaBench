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
struct kobject {int state_initialized; scalar_t__ state_remove_uevent_sent; scalar_t__ state_add_uevent_sent; scalar_t__ state_in_sysfs; int /*<<< orphan*/  entry; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct kobject *kobj)
{
	if (!kobj)
		return;
	FUNC1(&kobj->kref);
	FUNC0(&kobj->entry);
	kobj->state_in_sysfs = 0;
	kobj->state_add_uevent_sent = 0;
	kobj->state_remove_uevent_sent = 0;
	kobj->state_initialized = 1;
}