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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_HSR_MULTICAST_SPEC ; 
 size_t IFLA_HSR_SLAVE1 ; 
 size_t IFLA_HSR_SLAVE2 ; 
 size_t IFLA_HSR_VERSION ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,struct net_device**,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 unsigned char FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct net *src_net, struct net_device *dev,
		       struct nlattr *tb[], struct nlattr *data[],
		       struct netlink_ext_ack *extack)
{
	struct net_device *link[2];
	unsigned char multicast_spec, hsr_version;

	if (!data) {
		FUNC2(dev, "HSR: No slave devices specified\n");
		return -EINVAL;
	}
	if (!data[IFLA_HSR_SLAVE1]) {
		FUNC2(dev, "HSR: Slave1 device not specified\n");
		return -EINVAL;
	}
	link[0] = FUNC0(src_net,
				     FUNC3(data[IFLA_HSR_SLAVE1]));
	if (!data[IFLA_HSR_SLAVE2]) {
		FUNC2(dev, "HSR: Slave2 device not specified\n");
		return -EINVAL;
	}
	link[1] = FUNC0(src_net,
				     FUNC3(data[IFLA_HSR_SLAVE2]));

	if (!link[0] || !link[1])
		return -ENODEV;
	if (link[0] == link[1])
		return -EINVAL;

	if (!data[IFLA_HSR_MULTICAST_SPEC])
		multicast_spec = 0;
	else
		multicast_spec = FUNC4(data[IFLA_HSR_MULTICAST_SPEC]);

	if (!data[IFLA_HSR_VERSION])
		hsr_version = 0;
	else
		hsr_version = FUNC4(data[IFLA_HSR_VERSION]);

	return FUNC1(dev, link, multicast_spec, hsr_version);
}