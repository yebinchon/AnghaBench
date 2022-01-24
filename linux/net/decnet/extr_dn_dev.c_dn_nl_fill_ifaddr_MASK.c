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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ifaddrmsg {int ifa_prefixlen; int ifa_flags; int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_family; } ;
struct dn_ifaddr {int ifa_flags; scalar_t__* ifa_label; scalar_t__ ifa_local; scalar_t__ ifa_address; TYPE_2__* ifa_dev; int /*<<< orphan*/  ifa_scope; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_DECnet ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int /*<<< orphan*/  IFA_FLAGS ; 
 int IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_LABEL ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifaddrmsg* FUNC4 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int,int,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct dn_ifaddr *ifa,
			     u32 portid, u32 seq, int event, unsigned int flags)
{
	struct ifaddrmsg *ifm;
	struct nlmsghdr *nlh;
	u32 ifa_flags = ifa->ifa_flags | IFA_F_PERMANENT;

	nlh = FUNC6(skb, portid, seq, event, sizeof(*ifm), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	ifm = FUNC4(nlh);
	ifm->ifa_family = AF_DECnet;
	ifm->ifa_prefixlen = 16;
	ifm->ifa_flags = ifa_flags;
	ifm->ifa_scope = ifa->ifa_scope;
	ifm->ifa_index = ifa->ifa_dev->dev->ifindex;

	if ((ifa->ifa_address &&
	     FUNC0(skb, IFA_ADDRESS, ifa->ifa_address)) ||
	    (ifa->ifa_local &&
	     FUNC0(skb, IFA_LOCAL, ifa->ifa_local)) ||
	    (ifa->ifa_label[0] &&
	     FUNC1(skb, IFA_LABEL, ifa->ifa_label)) ||
	     FUNC2(skb, IFA_FLAGS, ifa_flags))
		goto nla_put_failure;
	FUNC5(skb, nlh);
	return 0;

nla_put_failure:
	FUNC3(skb, nlh);
	return -EMSGSIZE;
}