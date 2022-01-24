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
struct ip6addrlbl_entry {int /*<<< orphan*/  label; int /*<<< orphan*/  prefix; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  prefixlen; } ;
struct ifaddrlblmsg {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFAL_ADDRESS ; 
 int /*<<< orphan*/  IFAL_LABEL ; 
 int /*<<< orphan*/  FUNC0 (struct nlmsghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
			   struct ip6addrlbl_entry *p,
			   u32 lseq,
			   u32 portid, u32 seq, int event,
			   unsigned int flags)
{
	struct nlmsghdr *nlh = FUNC5(skb, portid, seq, event,
					 sizeof(struct ifaddrlblmsg), flags);
	if (!nlh)
		return -EMSGSIZE;

	FUNC0(nlh, p->prefixlen, p->ifindex, lseq);

	if (FUNC1(skb, IFAL_ADDRESS, &p->prefix) < 0 ||
	    FUNC2(skb, IFAL_LABEL, p->label) < 0) {
		FUNC3(skb, nlh);
		return -EMSGSIZE;
	}

	FUNC4(skb, nlh);
	return 0;
}