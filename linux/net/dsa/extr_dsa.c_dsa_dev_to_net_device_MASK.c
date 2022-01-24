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
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct net_device* FUNC3 (struct device*) ; 

struct net_device *FUNC4(struct device *dev)
{
	struct device *d;

	d = FUNC0(dev, "net");
	if (d != NULL) {
		struct net_device *nd;

		nd = FUNC3(d);
		FUNC1(nd);
		FUNC2(d);

		return nd;
	}

	return NULL;
}