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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_fdb_entry {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct net_bridge_fdb_entry* FUNC1 (struct net_bridge*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct net_bridge*,struct net_bridge_fdb_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct sk_buff *skb,
	       struct nlattr *tb[],
	       struct net_device *dev,
	       const unsigned char *addr,
	       u16 vid, u32 portid, u32 seq,
	       struct netlink_ext_ack *extack)
{
	struct net_bridge *br = FUNC3(dev);
	struct net_bridge_fdb_entry *f;
	int err = 0;

	FUNC4();
	f = FUNC1(br, addr, vid);
	if (!f) {
		FUNC0(extack, "Fdb entry not found");
		err = -ENOENT;
		goto errout;
	}

	err = FUNC2(skb, br, f, portid, seq,
			    RTM_NEWNEIGH, 0);
errout:
	FUNC5();
	return err;
}