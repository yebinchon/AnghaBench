#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long expires; } ;
struct idletimer_tg {TYPE_2__ timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct idletimer_tg* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct idletimer_tg *timer;
	unsigned long expires = 0;

	FUNC2(&list_mutex);

	timer =	FUNC0(attr->attr.name);
	if (timer)
		expires = timer->timer.expires;

	FUNC3(&list_mutex);

	if (FUNC5(expires, jiffies))
		return FUNC4(buf, "%u\n",
			       FUNC1(expires - jiffies) / 1000);

	return FUNC4(buf, "0\n");
}