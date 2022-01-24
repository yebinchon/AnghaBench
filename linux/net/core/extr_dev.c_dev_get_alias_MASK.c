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
struct net_device {int /*<<< orphan*/  ifalias; } ;
struct dev_ifalias {char* ifalias; } ;

/* Variables and functions */
 struct dev_ifalias* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,size_t,char*,char*) ; 

int FUNC4(const struct net_device *dev, char *name, size_t len)
{
	const struct dev_ifalias *alias;
	int ret = 0;

	FUNC1();
	alias = FUNC0(dev->ifalias);
	if (alias)
		ret = FUNC3(name, len, "%s", alias->ifalias);
	FUNC2();

	return ret;
}