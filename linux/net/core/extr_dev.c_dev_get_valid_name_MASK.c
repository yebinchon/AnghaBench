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
struct net_device {char const* name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC1 (struct net*,char const*) ; 
 int FUNC2 (struct net*,struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ) ; 

int FUNC6(struct net *net, struct net_device *dev,
		       const char *name)
{
	FUNC0(!net);

	if (!FUNC3(name))
		return -EINVAL;

	if (FUNC4(name, '%'))
		return FUNC2(net, dev, name);
	else if (FUNC1(net, name))
		return -EEXIST;
	else if (dev->name != name)
		FUNC5(dev->name, name, IFNAMSIZ);

	return 0;
}