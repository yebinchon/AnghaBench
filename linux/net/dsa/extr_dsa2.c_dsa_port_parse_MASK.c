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
struct dsa_port {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct dsa_port*,struct net_device*) ; 
 int FUNC3 (struct dsa_port*) ; 
 int FUNC4 (struct dsa_port*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct dsa_port *dp, const char *name,
			  struct device *dev)
{
	if (!FUNC5(name, "cpu")) {
		struct net_device *master;

		master = FUNC1(dev);
		if (!master)
			return -EPROBE_DEFER;

		FUNC0(master);

		return FUNC2(dp, master);
	}

	if (!FUNC5(name, "dsa"))
		return FUNC3(dp);

	return FUNC4(dp, name);
}