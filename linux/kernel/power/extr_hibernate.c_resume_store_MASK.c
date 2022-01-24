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
struct kobj_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ noresume ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ swsusp_resume_device ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static ssize_t FUNC7(struct kobject *kobj, struct kobj_attribute *attr,
			    const char *buf, size_t n)
{
	dev_t res;
	int len = n;
	char *name;

	if (len && buf[len-1] == '\n')
		len--;
	name = FUNC1(buf, len, GFP_KERNEL);
	if (!name)
		return -ENOMEM;

	res = FUNC3(name);
	FUNC0(name);
	if (!res)
		return -EINVAL;

	FUNC2();
	swsusp_resume_device = res;
	FUNC6();
	FUNC4("Configured resume from disk to %u\n", swsusp_resume_device);
	noresume = 0;
	FUNC5();
	return n;
}