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
struct hstate {unsigned long nr_overcommit_huge_pages; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct hstate*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 struct hstate* FUNC1 (struct kobject*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
		struct kobj_attribute *attr, const char *buf, size_t count)
{
	int err;
	unsigned long input;
	struct hstate *h = FUNC1(kobj, NULL);

	if (FUNC0(h))
		return -EINVAL;

	err = FUNC2(buf, 10, &input);
	if (err)
		return err;

	FUNC3(&hugetlb_lock);
	h->nr_overcommit_huge_pages = input;
	FUNC4(&hugetlb_lock);

	return count;
}