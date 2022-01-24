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
struct ip_vs_dest {scalar_t__ l_threshold; int flags; int u_threshold; int /*<<< orphan*/  persistconns; int /*<<< orphan*/  activeconns; int /*<<< orphan*/  inactconns; int /*<<< orphan*/  refcnt; } ;
struct ip_vs_conn {int flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  state; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  daf; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  af; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; int /*<<< orphan*/  protocol; struct ip_vs_dest* dest; } ;

/* Variables and functions */
 int IP_VS_CONN_F_INACTIVE ; 
 int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_DEST_F_OVERLOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_dest*) ; 
 int FUNC4 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC9(struct ip_vs_conn *cp)
{
	struct ip_vs_dest *dest = cp->dest;

	if (!dest)
		return;

	FUNC1(7, "Unbind-dest %s c:%s:%d v:%s:%d "
		      "d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d "
		      "dest->refcnt:%d\n",
		      FUNC6(cp->protocol),
		      FUNC0(cp->af, &cp->caddr), FUNC7(cp->cport),
		      FUNC0(cp->af, &cp->vaddr), FUNC7(cp->vport),
		      FUNC0(cp->daf, &cp->daddr), FUNC7(cp->dport),
		      FUNC5(cp), cp->state,
		      cp->flags, FUNC8(&cp->refcnt),
		      FUNC8(&dest->refcnt));

	/* Update the connection counters */
	if (!(cp->flags & IP_VS_CONN_F_TEMPLATE)) {
		/* It is a normal connection, so decrease the inactconns
		   or activeconns counter */
		if (cp->flags & IP_VS_CONN_F_INACTIVE) {
			FUNC2(&dest->inactconns);
		} else {
			FUNC2(&dest->activeconns);
		}
	} else {
		/* It is a persistent connection/template, so decrease
		   the persistent connection counter */
		FUNC2(&dest->persistconns);
	}

	if (dest->l_threshold != 0) {
		if (FUNC4(dest) < dest->l_threshold)
			dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
	} else if (dest->u_threshold != 0) {
		if (FUNC4(dest) * 4 < dest->u_threshold * 3)
			dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
	} else {
		if (dest->flags & IP_VS_DEST_F_OVERLOAD)
			dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
	}

	FUNC3(dest);
}