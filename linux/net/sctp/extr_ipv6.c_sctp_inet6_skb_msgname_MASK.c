#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; scalar_t__ sin6_flowinfo; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
union sctp_addr {TYPE_3__ v6; TYPE_2__ v4; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct sctphdr {int /*<<< orphan*/  source; } ;
struct TYPE_10__ {int version; int /*<<< orphan*/  saddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int IPV6_ADDR_LINKLOCAL ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 struct sctphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,union sctp_addr*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb, char *msgname,
				   int *addr_len)
{
	union sctp_addr *addr;
	struct sctphdr *sh;

	if (!msgname)
		return;

	addr = (union sctp_addr *)msgname;
	sh = FUNC3(skb);

	if (FUNC0(skb)->version == 4) {
		addr->v4.sin_family = AF_INET;
		addr->v4.sin_port = sh->source;
		addr->v4.sin_addr.s_addr = FUNC0(skb)->saddr;
	} else {
		addr->v6.sin6_family = AF_INET6;
		addr->v6.sin6_flowinfo = 0;
		addr->v6.sin6_port = sh->source;
		addr->v6.sin6_addr = FUNC2(skb)->saddr;
		if (FUNC1(&addr->v6.sin6_addr) & IPV6_ADDR_LINKLOCAL)
			addr->v6.sin6_scope_id = FUNC6(skb);
		else
			addr->v6.sin6_scope_id = 0;
	}

	*addr_len = FUNC5(FUNC4(skb->sk), addr);
}