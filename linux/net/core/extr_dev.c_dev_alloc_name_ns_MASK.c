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
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IFNAMSIZ ; 
 int FUNC1 (struct net*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct net *net,
			     struct net_device *dev,
			     const char *name)
{
	char buf[IFNAMSIZ];
	int ret;

	FUNC0(!net);
	ret = FUNC1(net, name, buf);
	if (ret >= 0)
		FUNC2(dev->name, buf, IFNAMSIZ);
	return ret;
}