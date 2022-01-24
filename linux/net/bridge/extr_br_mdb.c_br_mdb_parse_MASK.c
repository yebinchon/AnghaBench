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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct br_port_msg {scalar_t__ ifindex; } ;
struct br_mdb_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int IFF_EBRIDGE ; 
 size_t MDBA_SET_ENTRY ; 
 int /*<<< orphan*/  MDBA_SET_ENTRY_MAX ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct br_mdb_entry*) ; 
 struct br_mdb_entry* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 struct br_port_msg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct net_device **pdev, struct br_mdb_entry **pentry)
{
	struct net *net = FUNC7(skb->sk);
	struct br_mdb_entry *entry;
	struct br_port_msg *bpm;
	struct nlattr *tb[MDBA_SET_ENTRY_MAX+1];
	struct net_device *dev;
	int err;

	err = FUNC5(nlh, sizeof(*bpm), tb,
				     MDBA_SET_ENTRY_MAX, NULL, NULL);
	if (err < 0)
		return err;

	bpm = FUNC4(nlh);
	if (bpm->ifindex == 0) {
		FUNC6("PF_BRIDGE: br_mdb_parse() with invalid ifindex\n");
		return -EINVAL;
	}

	dev = FUNC0(net, bpm->ifindex);
	if (dev == NULL) {
		FUNC6("PF_BRIDGE: br_mdb_parse() with unknown ifindex\n");
		return -ENODEV;
	}

	if (!(dev->priv_flags & IFF_EBRIDGE)) {
		FUNC6("PF_BRIDGE: br_mdb_parse() with non-bridge\n");
		return -EOPNOTSUPP;
	}

	*pdev = dev;

	if (!tb[MDBA_SET_ENTRY] ||
	    FUNC3(tb[MDBA_SET_ENTRY]) != sizeof(struct br_mdb_entry)) {
		FUNC6("PF_BRIDGE: br_mdb_parse() with invalid attr\n");
		return -EINVAL;
	}

	entry = FUNC2(tb[MDBA_SET_ENTRY]);
	if (!FUNC1(entry)) {
		FUNC6("PF_BRIDGE: br_mdb_parse() with invalid entry\n");
		return -EINVAL;
	}

	*pentry = entry;
	return 0;
}