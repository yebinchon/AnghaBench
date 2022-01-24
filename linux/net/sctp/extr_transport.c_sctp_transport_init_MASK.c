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
struct TYPE_4__ {int /*<<< orphan*/  sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_transport {int param_flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  hb_nonce; int /*<<< orphan*/  proto_unreach_timer; int /*<<< orphan*/  reconf_timer; int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  T3_rtx_timer; int /*<<< orphan*/  transports; int /*<<< orphan*/  send_ready; int /*<<< orphan*/  transmitted; int /*<<< orphan*/  pf_retrans; int /*<<< orphan*/  pathmaxrxt; int /*<<< orphan*/  last_time_ecne_reduced; scalar_t__ last_time_heard; int /*<<< orphan*/  rto; scalar_t__ sack_generation; int /*<<< orphan*/  saddr; TYPE_3__* af_specific; int /*<<< orphan*/  ipaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  pf_retrans; int /*<<< orphan*/  max_retrans_path; int /*<<< orphan*/  rto_initial; } ;
struct net {TYPE_2__ sctp; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  sockaddr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SPP_HB_DISABLE ; 
 int SPP_PMTUD_ENABLE ; 
 int SPP_SACKDELAY_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,union sctp_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sctp_generate_heartbeat_event ; 
 int /*<<< orphan*/  sctp_generate_proto_unreach_event ; 
 int /*<<< orphan*/  sctp_generate_reconf_event ; 
 int /*<<< orphan*/  sctp_generate_t3_rtx_event ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_transport *FUNC8(struct net *net,
						  struct sctp_transport *peer,
						  const union sctp_addr *addr,
						  gfp_t gfp)
{
	/* Copy in the address.  */
	peer->af_specific = FUNC6(addr->sa.sa_family);
	FUNC2(&peer->ipaddr, addr, peer->af_specific->sockaddr_len);
	FUNC3(&peer->saddr, 0, sizeof(union sctp_addr));

	peer->sack_generation = 0;

	/* From 6.3.1 RTO Calculation:
	 *
	 * C1) Until an RTT measurement has been made for a packet sent to the
	 * given destination transport address, set RTO to the protocol
	 * parameter 'RTO.Initial'.
	 */
	peer->rto = FUNC4(net->sctp.rto_initial);

	peer->last_time_heard = 0;
	peer->last_time_ecne_reduced = jiffies;

	peer->param_flags = SPP_HB_DISABLE |
			    SPP_PMTUD_ENABLE |
			    SPP_SACKDELAY_ENABLE;

	/* Initialize the default path max_retrans.  */
	peer->pathmaxrxt  = net->sctp.max_retrans_path;
	peer->pf_retrans  = net->sctp.pf_retrans;

	FUNC0(&peer->transmitted);
	FUNC0(&peer->send_ready);
	FUNC0(&peer->transports);

	FUNC7(&peer->T3_rtx_timer, sctp_generate_t3_rtx_event, 0);
	FUNC7(&peer->hb_timer, sctp_generate_heartbeat_event, 0);
	FUNC7(&peer->reconf_timer, sctp_generate_reconf_event, 0);
	FUNC7(&peer->proto_unreach_timer,
		    sctp_generate_proto_unreach_event, 0);

	/* Initialize the 64-bit random nonce sent with heartbeat. */
	FUNC1(&peer->hb_nonce, sizeof(peer->hb_nonce));

	FUNC5(&peer->refcnt, 1);

	return peer;
}