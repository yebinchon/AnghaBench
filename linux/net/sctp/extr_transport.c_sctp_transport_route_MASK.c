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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int /*<<< orphan*/  saddr; scalar_t__ dst; int /*<<< orphan*/  fl; struct sctp_af* af_specific; struct sctp_association* asoc; } ;
struct sctp_sock {TYPE_2__* pf; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {struct sctp_transport* active_path; int /*<<< orphan*/  primary_path; } ;
struct sctp_association {TYPE_3__ base; TYPE_1__ peer; } ;
struct sctp_af {int /*<<< orphan*/  (* get_saddr ) (struct sctp_sock*,struct sctp_transport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_dst ) (struct sctp_transport*,union sctp_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* to_sk_saddr ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union sctp_addr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_transport*,union sctp_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_sock*,struct sctp_transport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct sctp_transport *transport,
			  union sctp_addr *saddr, struct sctp_sock *opt)
{
	struct sctp_association *asoc = transport->asoc;
	struct sctp_af *af = transport->af_specific;

	FUNC2(transport);
	af->get_dst(transport, saddr, &transport->fl, FUNC1(opt));

	if (saddr)
		FUNC0(&transport->saddr, saddr, sizeof(union sctp_addr));
	else
		af->get_saddr(opt, transport, &transport->fl);

	FUNC3(transport, FUNC1(opt));

	/* Initialize sk->sk_rcv_saddr, if the transport is the
	 * association's active path for getsockname().
	 */
	if (transport->dst && asoc &&
	    (!asoc->peer.primary_path || transport == asoc->peer.active_path))
		opt->pf->to_sk_saddr(&transport->saddr, asoc->base.sk);
}