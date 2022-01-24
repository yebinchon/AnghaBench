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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {struct net_bridge_port const* dst; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct net_bridge_fdb_entry* FUNC0 (struct net_bridge*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_fdb_entry*,int) ; 

__attribute__((used)) static int FUNC2(struct net_bridge *br,
				       const struct net_bridge_port *p,
				       const u8 *addr, u16 vlan)
{
	struct net_bridge_fdb_entry *fdb;

	fdb = FUNC0(br, addr, vlan);
	if (!fdb || fdb->dst != p)
		return -ENOENT;

	FUNC1(br, fdb, true);

	return 0;
}