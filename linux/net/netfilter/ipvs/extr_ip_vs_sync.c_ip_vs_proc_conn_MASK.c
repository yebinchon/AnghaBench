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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_sync_conn_options {int /*<<< orphan*/  out_seq; int /*<<< orphan*/  in_seq; } ;
struct ip_vs_proto_data {unsigned long* timeout_table; } ;
struct ip_vs_dest {int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; } ;
struct ip_vs_conn_param {int /*<<< orphan*/  pe_data; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; } ;
struct ip_vs_conn {scalar_t__ dport; unsigned int flags; unsigned int state; unsigned int old_state; unsigned long timeout; int /*<<< orphan*/  in_pkts; int /*<<< orphan*/  out_seq; int /*<<< orphan*/  in_seq; int /*<<< orphan*/  lock; struct ip_vs_dest* dest; int /*<<< orphan*/  daddr; int /*<<< orphan*/  daf; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned int IP_VS_CONN_F_BACKUP_UPD_MASK ; 
 unsigned int IP_VS_CONN_F_INACTIVE ; 
 unsigned int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*) ; 
 struct ip_vs_conn* FUNC7 (struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC8 (struct ip_vs_conn_param*,unsigned int,union nf_inet_addr const*,scalar_t__,unsigned int,struct ip_vs_dest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_vs_conn*) ; 
 struct ip_vs_conn* FUNC10 (struct ip_vs_conn_param*) ; 
 struct ip_vs_dest* FUNC11 (struct netns_ipvs*,unsigned int,unsigned int,union nf_inet_addr const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct ip_vs_proto_data* FUNC12 (struct netns_ipvs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct netns_ipvs*) ; 

__attribute__((used)) static void FUNC20(struct netns_ipvs *ipvs, struct ip_vs_conn_param *param,
			    unsigned int flags, unsigned int state,
			    unsigned int protocol, unsigned int type,
			    const union nf_inet_addr *daddr, __be16 dport,
			    unsigned long timeout, __u32 fwmark,
			    struct ip_vs_sync_conn_options *opt)
{
	struct ip_vs_dest *dest;
	struct ip_vs_conn *cp;

	if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
		cp = FUNC7(param);
		if (cp && ((cp->dport != dport) ||
			   !FUNC5(cp->daf, &cp->daddr, daddr))) {
			if (!(flags & IP_VS_CONN_F_INACTIVE)) {
				FUNC6(cp);
				FUNC1(cp);
				cp = NULL;
			} else {
				/* This is the expiration message for the
				 * connection that was already replaced, so we
				 * just ignore it.
				 */
				FUNC1(cp);
				FUNC14(param->pe_data);
				return;
			}
		}
	} else {
		cp = FUNC10(param);
	}

	if (cp) {
		/* Free pe_data */
		FUNC14(param->pe_data);

		dest = cp->dest;
		FUNC17(&cp->lock);
		if ((cp->flags ^ flags) & IP_VS_CONN_F_INACTIVE &&
		    !(flags & IP_VS_CONN_F_TEMPLATE) && dest) {
			if (flags & IP_VS_CONN_F_INACTIVE) {
				FUNC2(&dest->activeconns);
				FUNC3(&dest->inactconns);
			} else {
				FUNC3(&dest->activeconns);
				FUNC2(&dest->inactconns);
			}
		}
		flags &= IP_VS_CONN_F_BACKUP_UPD_MASK;
		flags |= cp->flags & ~IP_VS_CONN_F_BACKUP_UPD_MASK;
		cp->flags = flags;
		FUNC18(&cp->lock);
		if (!dest)
			FUNC13(cp);
	} else {
		/*
		 * Find the appropriate destination for the connection.
		 * If it is not found the connection will remain unbound
		 * but still handled.
		 */
		FUNC15();
		/* This function is only invoked by the synchronization
		 * code. We do not currently support heterogeneous pools
		 * with synchronization, so we can make the assumption that
		 * the svc_af is the same as the dest_af
		 */
		dest = FUNC11(ipvs, type, type, daddr, dport,
				       param->vaddr, param->vport, protocol,
				       fwmark, flags);

		cp = FUNC8(param, type, daddr, dport, flags, dest,
				    fwmark);
		FUNC16();
		if (!cp) {
			FUNC14(param->pe_data);
			FUNC0(2, "BACKUP, add new conn. failed\n");
			return;
		}
		if (!(flags & IP_VS_CONN_F_TEMPLATE))
			FUNC14(param->pe_data);
	}

	if (opt) {
		cp->in_seq = opt->in_seq;
		cp->out_seq = opt->out_seq;
	}
	FUNC4(&cp->in_pkts, FUNC19(ipvs));
	cp->state = state;
	cp->old_state = cp->state;
	/*
	 * For Ver 0 messages style
	 *  - Not possible to recover the right timeout for templates
	 *  - can not find the right fwmark
	 *    virtual service. If needed, we can do it for
	 *    non-fwmark persistent services.
	 * Ver 1 messages style.
	 *  - No problem.
	 */
	if (timeout) {
		if (timeout > MAX_SCHEDULE_TIMEOUT / HZ)
			timeout = MAX_SCHEDULE_TIMEOUT / HZ;
		cp->timeout = timeout*HZ;
	} else {
		struct ip_vs_proto_data *pd;

		pd = FUNC12(ipvs, protocol);
		if (!(flags & IP_VS_CONN_F_TEMPLATE) && pd && pd->timeout_table)
			cp->timeout = pd->timeout_table[state];
		else
			cp->timeout = (3*60*HZ);
	}
	FUNC9(cp);
}