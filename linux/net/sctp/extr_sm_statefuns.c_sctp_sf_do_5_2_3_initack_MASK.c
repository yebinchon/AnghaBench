#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_4__ {struct sctp_endpoint const* ep; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC1 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC3(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	/* Per the above section, we'll discard the chunk if we have an
	 * endpoint.  If this is an OOTB INIT-ACK, treat it as such.
	 */
	if (ep == FUNC2(net->sctp.ctl_sock)->ep)
		return FUNC1(net, ep, asoc, type, arg, commands);
	else
		return FUNC0(net, ep, asoc, type, arg, commands);
}