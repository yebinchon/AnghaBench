#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct net_bridge_fdb_entry {scalar_t__ is_local; } ;
struct net_bridge {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct net_bridge_fdb_entry* FUNC0 (struct net_bridge*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,unsigned char const*) ; 
 struct net_bridge_fdb_entry* FUNC3 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*,struct net_bridge_fdb_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*,struct net_bridge_fdb_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*) ; 

__attribute__((used)) static int FUNC7(struct net_bridge *br, struct net_bridge_port *source,
		  const unsigned char *addr, u16 vid)
{
	struct net_bridge_fdb_entry *fdb;

	if (!FUNC6(addr))
		return -EINVAL;

	fdb = FUNC0(br, addr, vid);
	if (fdb) {
		/* it is okay to have multiple ports with same
		 * address, just use the first one.
		 */
		if (fdb->is_local)
			return 0;
		FUNC1(br, "adding interface %s with same address as a received packet (addr:%pM, vlan:%u)\n",
		       source ? source->dev->name : br->dev->name, addr, vid);
		FUNC4(br, fdb, true);
	}

	fdb = FUNC3(br, source, addr, vid, 1, 1);
	if (!fdb)
		return -ENOMEM;

	FUNC2(br, addr);
	FUNC5(br, fdb, RTM_NEWNEIGH, true);
	return 0;
}