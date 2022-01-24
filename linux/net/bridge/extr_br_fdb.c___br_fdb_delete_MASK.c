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
 int FUNC0 (struct net_bridge*,struct net_bridge_port const*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_bridge *br,
			   const struct net_bridge_port *p,
			   const unsigned char *addr, u16 vid)
{
	int err;

	FUNC1(&br->hash_lock);
	err = FUNC0(br, p, addr, vid);
	FUNC2(&br->hash_lock);

	return err;
}