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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
union sctp_addr_param {TYPE_1__ p; } ;
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_af {int /*<<< orphan*/  (* from_addr_param ) (union sctp_addr*,union sctp_addr_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct sctp_addip_chunk {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct sctp_association* FUNC0 (struct net*,union sctp_addr const*,union sctp_addr*,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union sctp_addr*,union sctp_addr_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sctp_association *FUNC5(
					struct net *net,
					struct sctp_chunkhdr *ch,
					const union sctp_addr *laddr,
					__be16 peer_port,
					struct sctp_transport **transportp)
{
	struct sctp_addip_chunk *asconf = (struct sctp_addip_chunk *)ch;
	struct sctp_af *af;
	union sctp_addr_param *param;
	union sctp_addr paddr;

	/* Skip over the ADDIP header and find the Address parameter */
	param = (union sctp_addr_param *)(asconf + 1);

	af = FUNC2(FUNC1(param->p.type));
	if (FUNC4(!af))
		return NULL;

	af->from_addr_param(&paddr, param, peer_port, 0);

	return FUNC0(net, laddr, &paddr, transportp);
}