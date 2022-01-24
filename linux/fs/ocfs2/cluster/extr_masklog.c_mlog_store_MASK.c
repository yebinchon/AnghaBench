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
struct mlog_attribute {int /*<<< orphan*/  mask; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct mlog_attribute* FUNC1 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *obj, struct attribute *attr,
			  const char *buf, size_t count)
{
	struct mlog_attribute *mlog_attr = FUNC1(attr);

	return FUNC0(mlog_attr->mask, buf, count);
}