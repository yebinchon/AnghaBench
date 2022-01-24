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
struct net_bridge_port {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net_bridge *br, struct net_bridge_port *source,
		  const unsigned char *addr, u16 vid)
{
	int ret;

	FUNC1(&br->hash_lock);
	ret = FUNC0(br, source, addr, vid);
	FUNC2(&br->hash_lock);
	return ret;
}