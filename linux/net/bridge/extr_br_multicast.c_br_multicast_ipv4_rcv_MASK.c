#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct igmphdr {int type; int /*<<< orphan*/  group; } ;
struct TYPE_6__ {int mrouters_only; int igmp; } ;
struct TYPE_5__ {unsigned char* h_source; } ;
struct TYPE_4__ {scalar_t__ protocol; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  BR_MCAST_DIR_RX ; 
 int ENOMSG ; 
#define  IGMPV2_HOST_MEMBERSHIP_REPORT 132 
#define  IGMPV3_HOST_MEMBERSHIP_REPORT 131 
#define  IGMP_HOST_LEAVE_MESSAGE 130 
#define  IGMP_HOST_MEMBERSHIP_QUERY 129 
#define  IGMP_HOST_MEMBERSHIP_REPORT 128 
 scalar_t__ IPPROTO_PIM ; 
 int FUNC1 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*) ; 
 int FUNC2 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 struct igmphdr* FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_bridge *br,
				 struct net_bridge_port *port,
				 struct sk_buff *skb,
				 u16 vid)
{
	const unsigned char *src;
	struct igmphdr *ih;
	int err;

	err = FUNC12(skb);

	if (err == -ENOMSG) {
		if (!FUNC14(FUNC11(skb)->daddr)) {
			FUNC0(skb)->mrouters_only = 1;
		} else if (FUNC15(FUNC11(skb)->daddr)) {
			if (FUNC11(skb)->protocol == IPPROTO_PIM)
				FUNC8(br, port, skb);
		} else if (FUNC13(FUNC11(skb)->daddr)) {
			FUNC4(br, port, skb);
		}

		return 0;
	} else if (err < 0) {
		FUNC7(br, port, skb->protocol);
		return err;
	}

	ih = FUNC10(skb);
	src = FUNC9(skb)->h_source;
	FUNC0(skb)->igmp = ih->type;

	switch (ih->type) {
	case IGMP_HOST_MEMBERSHIP_REPORT:
	case IGMPV2_HOST_MEMBERSHIP_REPORT:
		FUNC0(skb)->mrouters_only = 1;
		err = FUNC1(br, port, ih->group, vid, src);
		break;
	case IGMPV3_HOST_MEMBERSHIP_REPORT:
		err = FUNC2(br, port, skb, vid);
		break;
	case IGMP_HOST_MEMBERSHIP_QUERY:
		FUNC5(br, port, skb, vid);
		break;
	case IGMP_HOST_LEAVE_MESSAGE:
		FUNC3(br, port, ih->group, vid, src);
		break;
	}

	FUNC6(br, port, skb, FUNC0(skb)->igmp,
			   BR_MCAST_DIR_RX);

	return err;
}