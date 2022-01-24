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
struct netns_ipvs {int /*<<< orphan*/  mixed_address_family_dests; } ;
struct ip_vs_service {scalar_t__ af; scalar_t__ port; int /*<<< orphan*/  scheduler; int /*<<< orphan*/  num_dests; int /*<<< orphan*/  destinations; struct netns_ipvs* ipvs; } ;
struct ip_vs_scheduler {int /*<<< orphan*/  (* upd_dest ) (struct ip_vs_service*,struct ip_vs_dest*) ;int /*<<< orphan*/  (* add_dest ) (struct ip_vs_service*,struct ip_vs_dest*) ;} ;
struct ip_vs_dest_user_kern {scalar_t__ af; int weight; int conn_flags; scalar_t__ tun_type; scalar_t__ tun_port; scalar_t__ u_threshold; int /*<<< orphan*/  l_threshold; int /*<<< orphan*/  tun_flags; } ;
struct ip_vs_dest {scalar_t__ af; scalar_t__ tun_type; scalar_t__ tun_port; scalar_t__ u_threshold; int /*<<< orphan*/  n_list; int /*<<< orphan*/  stats; int /*<<< orphan*/  dst_lock; int /*<<< orphan*/  l_threshold; int /*<<< orphan*/  flags; int /*<<< orphan*/  svc; int /*<<< orphan*/  conn_flags; int /*<<< orphan*/  tun_flags; int /*<<< orphan*/  weight; int /*<<< orphan*/  last_weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FTPPORT ; 
 int IP_VS_CONN_F_DEST_MASK ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 int IP_VS_CONN_F_INACTIVE ; 
 int IP_VS_CONN_F_MASQ ; 
 int IP_VS_CONN_F_NOOUTPUT ; 
 int /*<<< orphan*/  IP_VS_DEST_F_AVAILABLE ; 
 int /*<<< orphan*/  IP_VS_DEST_F_OVERLOAD ; 
 int FUNC1 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_dest*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_service*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC7 (struct netns_ipvs*,struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC9 (struct netns_ipvs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ip_vs_service*,struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC16 (struct ip_vs_service*,struct ip_vs_dest*) ; 

__attribute__((used)) static void
FUNC17(struct ip_vs_service *svc, struct ip_vs_dest *dest,
		    struct ip_vs_dest_user_kern *udest, int add)
{
	struct netns_ipvs *ipvs = svc->ipvs;
	struct ip_vs_service *old_svc;
	struct ip_vs_scheduler *sched;
	int conn_flags;

	/* We cannot modify an address and change the address family */
	FUNC0(!add && udest->af != dest->af);

	if (add && udest->af != svc->af)
		ipvs->mixed_address_family_dests++;

	/* keep the last_weight with latest non-0 weight */
	if (add || udest->weight != 0)
		FUNC5(&dest->last_weight, udest->weight);

	/* set the weight and the flags */
	FUNC5(&dest->weight, udest->weight);
	conn_flags = udest->conn_flags & IP_VS_CONN_F_DEST_MASK;
	conn_flags |= IP_VS_CONN_F_INACTIVE;

	/* Need to rehash? */
	if ((udest->conn_flags & IP_VS_CONN_F_FWD_MASK) !=
	    FUNC1(dest) ||
	    udest->tun_type != dest->tun_type ||
	    udest->tun_port != dest->tun_port)
		FUNC8(dest);

	/* set the tunnel info */
	dest->tun_type = udest->tun_type;
	dest->tun_port = udest->tun_port;
	dest->tun_flags = udest->tun_flags;

	/* set the IP_VS_CONN_F_NOOUTPUT flag if not masquerading/NAT */
	if ((conn_flags & IP_VS_CONN_F_FWD_MASK) != IP_VS_CONN_F_MASQ) {
		conn_flags |= IP_VS_CONN_F_NOOUTPUT;
	} else {
		/* FTP-NAT requires conntrack for mangling */
		if (svc->port == FTPPORT)
			FUNC6(svc);
	}
	FUNC5(&dest->conn_flags, conn_flags);
	/* Put the real service in rs_table if not present. */
	FUNC7(ipvs, dest);

	/* bind the service */
	old_svc = FUNC12(dest->svc, 1);
	if (!old_svc) {
		FUNC2(dest, svc);
	} else {
		if (old_svc != svc) {
			FUNC10(&dest->stats);
			FUNC2(dest, svc);
			FUNC4(old_svc, true);
		}
	}

	/* set the dest status flags */
	dest->flags |= IP_VS_DEST_F_AVAILABLE;

	if (udest->u_threshold == 0 || udest->u_threshold > dest->u_threshold)
		dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
	dest->u_threshold = udest->u_threshold;
	dest->l_threshold = udest->l_threshold;

	dest->af = udest->af;

	FUNC13(&dest->dst_lock);
	FUNC3(dest);
	FUNC14(&dest->dst_lock);

	if (add) {
		FUNC9(svc->ipvs, &dest->stats);
		FUNC11(&dest->n_list, &svc->destinations);
		svc->num_dests++;
		sched = FUNC12(svc->scheduler, 1);
		if (sched && sched->add_dest)
			sched->add_dest(svc, dest);
	} else {
		sched = FUNC12(svc->scheduler, 1);
		if (sched && sched->upd_dest)
			sched->upd_dest(svc, dest);
	}
}