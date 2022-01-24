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
struct ip_vs_dest {scalar_t__ u_threshold; int /*<<< orphan*/  flags; int /*<<< orphan*/  persistconns; int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  conn_flags; } ;
struct ip_vs_conn {scalar_t__ protocol; int flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  state; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  daf; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  af; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; struct ip_vs_dest* dest; } ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 unsigned int IP_VS_CONN_F_INACTIVE ; 
 int IP_VS_CONN_F_NOOUTPUT ; 
 unsigned int IP_VS_CONN_F_ONE_PACKET ; 
 int IP_VS_CONN_F_SYNC ; 
 int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_VS_DEST_F_OVERLOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_dest*) ; 
 scalar_t__ FUNC5 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC10(struct ip_vs_conn *cp, struct ip_vs_dest *dest)
{
	unsigned int conn_flags;
	__u32 flags;

	/* if dest is NULL, then return directly */
	if (!dest)
		return;

	/* Increase the refcnt counter of the dest */
	FUNC4(dest);

	conn_flags = FUNC3(&dest->conn_flags);
	if (cp->protocol != IPPROTO_UDP)
		conn_flags &= ~IP_VS_CONN_F_ONE_PACKET;
	flags = cp->flags;
	/* Bind with the destination and its corresponding transmitter */
	if (flags & IP_VS_CONN_F_SYNC) {
		/* if the connection is not template and is created
		 * by sync, preserve the activity flag.
		 */
		if (!(flags & IP_VS_CONN_F_TEMPLATE))
			conn_flags &= ~IP_VS_CONN_F_INACTIVE;
		/* connections inherit forwarding method from dest */
		flags &= ~(IP_VS_CONN_F_FWD_MASK | IP_VS_CONN_F_NOOUTPUT);
	}
	flags |= conn_flags;
	cp->flags = flags;
	cp->dest = dest;

	FUNC1(7, "Bind-dest %s c:%s:%d v:%s:%d "
		      "d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d "
		      "dest->refcnt:%d\n",
		      FUNC7(cp->protocol),
		      FUNC0(cp->af, &cp->caddr), FUNC8(cp->cport),
		      FUNC0(cp->af, &cp->vaddr), FUNC8(cp->vport),
		      FUNC0(cp->daf, &cp->daddr), FUNC8(cp->dport),
		      FUNC6(cp), cp->state,
		      cp->flags, FUNC9(&cp->refcnt),
		      FUNC9(&dest->refcnt));

	/* Update the connection counters */
	if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
		/* It is a normal connection, so modify the counters
		 * according to the flags, later the protocol can
		 * update them on state change
		 */
		if (!(flags & IP_VS_CONN_F_INACTIVE))
			FUNC2(&dest->activeconns);
		else
			FUNC2(&dest->inactconns);
	} else {
		/* It is a persistent connection/template, so increase
		   the persistent connection counter */
		FUNC2(&dest->persistconns);
	}

	if (dest->u_threshold != 0 &&
	    FUNC5(dest) >= dest->u_threshold)
		dest->flags |= IP_VS_DEST_F_OVERLOAD;
}