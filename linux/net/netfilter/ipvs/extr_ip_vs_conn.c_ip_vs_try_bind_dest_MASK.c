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
struct ip_vs_proto_data {int /*<<< orphan*/  pp; int /*<<< orphan*/  appcnt; } ;
struct ip_vs_dest {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ipvs; int /*<<< orphan*/ * packet_xmit; int /*<<< orphan*/  lock; scalar_t__ app; scalar_t__ dest; int /*<<< orphan*/  flags; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_conn*,struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_conn*) ; 
 struct ip_vs_dest* FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_vs_proto_data* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct ip_vs_conn *cp)
{
	struct ip_vs_dest *dest;

	FUNC8();

	/* This function is only invoked by the synchronization code. We do
	 * not currently support heterogeneous pools with synchronization,
	 * so we can make the assumption that the svc_af is the same as the
	 * dest_af
	 */
	dest = FUNC5(cp->ipvs, cp->af, cp->af, &cp->daddr,
			       cp->dport, &cp->vaddr, cp->vport,
			       cp->protocol, cp->fwmark, cp->flags);
	if (dest) {
		struct ip_vs_proto_data *pd;

		FUNC10(&cp->lock);
		if (cp->dest) {
			FUNC11(&cp->lock);
			FUNC9();
			return;
		}

		/* Applications work depending on the forwarding method
		 * but better to reassign them always when binding dest */
		if (cp->app)
			FUNC7(cp);

		FUNC2(cp, dest);
		FUNC11(&cp->lock);

		/* Update its packet transmitter */
		cp->packet_xmit = NULL;
#ifdef CONFIG_IP_VS_IPV6
		if (cp->af == AF_INET6)
			ip_vs_bind_xmit_v6(cp);
		else
#endif
			FUNC3(cp);

		pd = FUNC6(cp->ipvs, cp->protocol);
		if (pd && FUNC0(&pd->appcnt))
			FUNC1(cp, pd->pp);
	}
	FUNC9();
}