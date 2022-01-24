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
struct dsa_port {struct device_node* dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (struct dsa_port*,struct net_device*) ; 
 int FUNC1 (struct dsa_port*) ; 
 int FUNC2 (struct dsa_port*,char const*) ; 
 struct net_device* FUNC3 (struct device_node*) ; 
 char* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct dsa_port *dp, struct device_node *dn)
{
	struct device_node *ethernet = FUNC5(dn, "ethernet", 0);
	const char *name = FUNC4(dn, "label", NULL);
	bool link = FUNC6(dn, "link");

	dp->dn = dn;

	if (ethernet) {
		struct net_device *master;

		master = FUNC3(ethernet);
		if (!master)
			return -EPROBE_DEFER;

		return FUNC0(dp, master);
	}

	if (link)
		return FUNC1(dp);

	return FUNC2(dp, name);
}