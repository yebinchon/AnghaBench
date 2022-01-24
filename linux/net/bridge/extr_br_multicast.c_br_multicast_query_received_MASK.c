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
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct bridge_mcast_other_query {int dummy; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct bridge_mcast_other_query*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct net_bridge *br,
					struct net_bridge_port *port,
					struct bridge_mcast_other_query *query,
					struct br_ip *saddr,
					unsigned long max_delay)
{
	if (!FUNC1(br, port, saddr))
		return;

	FUNC2(br, query, max_delay);
	FUNC0(br, port);
}