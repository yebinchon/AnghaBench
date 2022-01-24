#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  mark; TYPE_1__* dev; } ;
struct ip_vs_service {int flags; scalar_t__ port; int /*<<< orphan*/  af; int /*<<< orphan*/  ipvs; int /*<<< orphan*/  scheduler; int /*<<< orphan*/  fwmark; } ;
struct ip_vs_scheduler {struct ip_vs_dest* (* schedule ) (struct ip_vs_service*,struct sk_buff*,struct ip_vs_iphdr*) ;} ;
struct ip_vs_protocol {int /*<<< orphan*/  conn_in_get; } ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int /*<<< orphan*/  off; int /*<<< orphan*/  hdr_flags; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  len; } ;
struct ip_vs_dest {scalar_t__ port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  daf; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  af; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FTPDATA ; 
 int IFF_LOOPBACK ; 
 struct ip_vs_conn* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_iphdr*) ; 
 scalar_t__ IPPROTO_UDP ; 
 unsigned int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_VS_HDR_INVERSE ; 
 int IP_VS_SVC_F_ONEPACKET ; 
 int IP_VS_SVC_F_PERSISTENT ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 scalar_t__* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void const*,scalar_t__,void const*,scalar_t__,struct ip_vs_conn_param*) ; 
 int /*<<< orphan*/  ip_vs_conn_in_get_proto ; 
 struct ip_vs_conn* FUNC8 (struct ip_vs_conn_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,unsigned int,struct ip_vs_dest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_vs_conn*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_vs_iphdr*) ; 
 struct ip_vs_conn* FUNC12 (struct ip_vs_service*,struct sk_buff*,scalar_t__,scalar_t__,int*,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 struct ip_vs_scheduler* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct ip_vs_dest* FUNC19 (struct ip_vs_service*,struct sk_buff*,struct ip_vs_iphdr*) ; 

struct ip_vs_conn *
FUNC20(struct ip_vs_service *svc, struct sk_buff *skb,
	       struct ip_vs_proto_data *pd, int *ignored,
	       struct ip_vs_iphdr *iph)
{
	struct ip_vs_protocol *pp = pd->pp;
	struct ip_vs_conn *cp = NULL;
	struct ip_vs_scheduler *sched;
	struct ip_vs_dest *dest;
	__be16 _ports[2], *pptr, cport, vport;
	const void *caddr, *vaddr;
	unsigned int flags;

	*ignored = 1;
	/*
	 * IPv6 frags, only the first hit here.
	 */
	pptr = FUNC6(skb, iph->len, sizeof(_ports), _ports);
	if (pptr == NULL)
		return NULL;

	if (FUNC13(!FUNC11(iph))) {
		cport = pptr[0];
		caddr = &iph->saddr;
		vport = pptr[1];
		vaddr = &iph->daddr;
	} else {
		cport = pptr[1];
		caddr = &iph->daddr;
		vport = pptr[0];
		vaddr = &iph->saddr;
	}

	/*
	 * FTPDATA needs this check when using local real server.
	 * Never schedule Active FTPDATA connections from real server.
	 * For LVS-NAT they must be already created. For other methods
	 * with persistence the connection is created on SYN+ACK.
	 */
	if (cport == FTPDATA) {
		FUNC4(12, svc->af, pp, skb, iph->off,
			      "Not scheduling FTPDATA");
		return NULL;
	}

	/*
	 *    Do not schedule replies from local real server.
	 */
	if ((!skb->dev || skb->dev->flags & IFF_LOOPBACK)) {
		iph->hdr_flags ^= IP_VS_HDR_INVERSE;
		cp = FUNC0(pp->conn_in_get,
				     ip_vs_conn_in_get_proto, svc->ipvs,
				     svc->af, skb, iph);
		iph->hdr_flags ^= IP_VS_HDR_INVERSE;

		if (cp) {
			FUNC4(12, svc->af, pp, skb, iph->off,
				      "Not scheduling reply for existing"
				      " connection");
			FUNC5(cp);
			return NULL;
		}
	}

	/*
	 *    Persistent service
	 */
	if (svc->flags & IP_VS_SVC_F_PERSISTENT)
		return FUNC12(svc, skb, cport, vport, ignored,
					   iph);

	*ignored = 0;

	/*
	 *    Non-persistent service
	 */
	if (!svc->fwmark && vport != svc->port) {
		if (!svc->port)
			FUNC15("Schedule: port zero only supported "
			       "in persistent services, "
			       "check your ipvs configuration\n");
		return NULL;
	}

	sched = FUNC16(svc->scheduler);
	if (sched) {
		/* read svc->sched_data after svc->scheduler */
		FUNC18();
		dest = sched->schedule(svc, skb, iph);
	} else {
		dest = NULL;
	}
	if (dest == NULL) {
		FUNC1(1, "Schedule: no dest found.\n");
		return NULL;
	}

	flags = (svc->flags & IP_VS_SVC_F_ONEPACKET
		 && iph->protocol == IPPROTO_UDP) ?
		IP_VS_CONN_F_ONE_PACKET : 0;

	/*
	 *    Create a connection entry.
	 */
	{
		struct ip_vs_conn_param p;

		FUNC7(svc->ipvs, svc->af, iph->protocol,
				      caddr, cport, vaddr, vport, &p);
		cp = FUNC8(&p, dest->af, &dest->addr,
				    dest->port ? dest->port : vport,
				    flags, dest, skb->mark);
		if (!cp) {
			*ignored = -1;
			return NULL;
		}
	}

	FUNC3(6, "Schedule fwd:%c c:%s:%u v:%s:%u "
		      "d:%s:%u conn->flags:%X conn->refcnt:%d\n",
		      FUNC10(cp),
		      FUNC2(cp->af, &cp->caddr), FUNC14(cp->cport),
		      FUNC2(cp->af, &cp->vaddr), FUNC14(cp->vport),
		      FUNC2(cp->daf, &cp->daddr), FUNC14(cp->dport),
		      cp->flags, FUNC17(&cp->refcnt));

	FUNC9(cp, svc);
	return cp;
}