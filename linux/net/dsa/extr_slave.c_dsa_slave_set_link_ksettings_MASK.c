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
struct ethtool_link_ksettings {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  pl; } ;

/* Variables and functions */
 struct dsa_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_link_ksettings const*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
					const struct ethtool_link_ksettings *cmd)
{
	struct dsa_port *dp = FUNC0(dev);

	return FUNC1(dp->pl, cmd);
}