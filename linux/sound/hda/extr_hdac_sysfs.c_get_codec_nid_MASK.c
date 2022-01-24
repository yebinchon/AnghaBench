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
struct kobject {int /*<<< orphan*/  name; TYPE_1__* parent; } ;
struct hdac_device {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct hdac_device* FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC3(struct kobject *kobj, struct hdac_device **codecp)
{
	struct device *dev = FUNC1(kobj->parent->parent);
	int nid;
	ssize_t ret;

	ret = FUNC2(kobj->name, 16, &nid);
	if (ret < 0)
		return ret;
	*codecp = FUNC0(dev);
	return nid;
}