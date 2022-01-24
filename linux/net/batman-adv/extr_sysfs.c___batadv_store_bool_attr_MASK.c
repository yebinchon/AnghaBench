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
struct net_device {int dummy; } ;
struct attribute {int /*<<< orphan*/  name; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int FUNC0 (char*,size_t,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static inline ssize_t
FUNC1(char *buff, size_t count,
			 void (*post_func)(struct net_device *),
			 struct attribute *attr,
			 atomic_t *attr_store, struct net_device *net_dev)
{
	bool changed;
	int ret;

	ret = FUNC0(buff, count, net_dev, attr->name,
				     attr_store, &changed);
	if (post_func && changed)
		post_func(net_dev);

	return ret;
}