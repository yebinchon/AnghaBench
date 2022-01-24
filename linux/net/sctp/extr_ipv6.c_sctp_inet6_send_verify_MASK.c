#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_2__ v6; TYPE_4__ sa; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;
struct sctp_sock {TYPE_3__* pf; TYPE_1__ inet; } ;
struct sctp_af {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {struct sctp_af* af; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int IPV6_ADDR_LINKLOCAL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sctp_af* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sctp_sock *opt, union sctp_addr *addr)
{
	struct sctp_af *af = NULL;

	/* ASSERT: address family has already been verified. */
	if (addr->sa.sa_family != AF_INET6)
		af = FUNC4(addr->sa.sa_family);
	else {
		int type = FUNC1(&addr->v6.sin6_addr);
		struct net_device *dev;

		if (type & IPV6_ADDR_LINKLOCAL) {
			if (!addr->v6.sin6_scope_id)
				return 0;
			FUNC2();
			dev = FUNC0(FUNC5(&opt->inet.sk),
						   addr->v6.sin6_scope_id);
			FUNC3();
			if (!dev)
				return 0;
		}
		af = opt->pf->af;
	}

	return af != NULL;
}