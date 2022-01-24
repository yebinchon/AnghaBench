#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip4; } ;
struct br_ip {int /*<<< orphan*/  vid; int /*<<< orphan*/  proto; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  br_group ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,struct br_ip*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct br_ip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_bridge *br,
				      struct net_bridge_port *port,
				      __be32 group,
				      __u16 vid,
				      const unsigned char *src)
{
	struct br_ip br_group;

	if (FUNC2(group))
		return 0;

	FUNC3(&br_group, 0, sizeof(br_group));
	br_group.u.ip4 = group;
	br_group.proto = FUNC1(ETH_P_IP);
	br_group.vid = vid;

	return FUNC0(br, port, &br_group, src);
}