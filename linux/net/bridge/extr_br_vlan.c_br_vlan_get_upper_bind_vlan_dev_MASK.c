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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct br_vlan_bind_walk_data {struct net_device* result; int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  br_vlan_match_bind_vlan_dev_fn ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,struct br_vlan_bind_walk_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct net_device *
FUNC3(struct net_device *dev, u16 vid)
{
	struct br_vlan_bind_walk_data data = {
		.vid = vid,
	};

	FUNC1();
	FUNC0(dev, br_vlan_match_bind_vlan_dev_fn,
				      &data);
	FUNC2();

	return data.result;
}