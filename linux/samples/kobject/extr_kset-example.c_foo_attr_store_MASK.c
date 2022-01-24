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
struct foo_obj {int dummy; } ;
struct foo_attribute {int /*<<< orphan*/  (* store ) (struct foo_obj*,struct foo_attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct foo_obj*,struct foo_attribute*,char const*,size_t) ; 
 struct foo_attribute* FUNC1 (struct attribute*) ; 
 struct foo_obj* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
			      struct attribute *attr,
			      const char *buf, size_t len)
{
	struct foo_attribute *attribute;
	struct foo_obj *foo;

	attribute = FUNC1(attr);
	foo = FUNC2(kobj);

	if (!attribute->store)
		return -EIO;

	return attribute->store(foo, attribute, buf, len);
}