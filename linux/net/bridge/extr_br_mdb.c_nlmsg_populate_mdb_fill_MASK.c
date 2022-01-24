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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct br_port_msg {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  family; } ;
struct br_mdb_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BRIDGE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  MDBA_MDB ; 
 int /*<<< orphan*/  MDBA_MDB_ENTRY ; 
 int /*<<< orphan*/  MDBA_MDB_ENTRY_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct br_port_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct br_mdb_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct br_port_msg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				   struct net_device *dev,
				   struct br_mdb_entry *entry, u32 pid,
				   u32 seq, int type, unsigned int flags)
{
	struct nlmsghdr *nlh;
	struct br_port_msg *bpm;
	struct nlattr *nest, *nest2;

	nlh = FUNC7(skb, pid, seq, type, sizeof(*bpm), 0);
	if (!nlh)
		return -EMSGSIZE;

	bpm = FUNC5(nlh);
	FUNC0(bpm, 0, sizeof(*bpm));
	bpm->family  = AF_BRIDGE;
	bpm->ifindex = dev->ifindex;
	nest = FUNC2(skb, MDBA_MDB);
	if (nest == NULL)
		goto cancel;
	nest2 = FUNC2(skb, MDBA_MDB_ENTRY);
	if (nest2 == NULL)
		goto end;

	if (FUNC3(skb, MDBA_MDB_ENTRY_INFO, sizeof(*entry), entry))
		goto end;

	FUNC1(skb, nest2);
	FUNC1(skb, nest);
	FUNC6(skb, nlh);
	return 0;

end:
	FUNC1(skb, nest);
cancel:
	FUNC4(skb, nlh);
	return -EMSGSIZE;
}