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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_1__ base; } ;
struct sctp_association {scalar_t__ state; struct sctp_endpoint* ep; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EALREADY ; 
 int EISCONN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SCTP_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  SCTP_UNKNOWN ; 
 struct sctp_transport* FUNC0 (struct sctp_association*,union sctp_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sctp_endpoint*,union sctp_addr*) ; 
 struct sctp_association* FUNC2 (struct sctp_endpoint*,union sctp_addr*,struct sctp_transport**) ; 
 int FUNC3 (int /*<<< orphan*/ ,union sctp_addr*,int) ; 

__attribute__((used)) static int FUNC4(struct sctp_association *asoc,
				 union sctp_addr *daddr, int addr_len)
{
	struct sctp_endpoint *ep = asoc->ep;
	struct sctp_association *old;
	struct sctp_transport *t;
	int err;

	err = FUNC3(ep->base.sk, daddr, addr_len);
	if (err)
		return err;

	old = FUNC2(ep, daddr, &t);
	if (old && old != asoc)
		return old->state >= SCTP_STATE_ESTABLISHED ? -EISCONN
							    : -EALREADY;

	if (FUNC1(ep, daddr))
		return -EADDRNOTAVAIL;

	t = FUNC0(asoc, daddr, GFP_KERNEL, SCTP_UNKNOWN);
	if (!t)
		return -ENOMEM;

	return 0;
}