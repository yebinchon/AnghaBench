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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_transport*) ; 
 struct sctp_transport* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct sctp_transport*,union sctp_addr const*,int /*<<< orphan*/ ) ; 

struct sctp_transport *FUNC4(struct net *net,
					  const union sctp_addr *addr,
					  gfp_t gfp)
{
	struct sctp_transport *transport;

	transport = FUNC2(sizeof(*transport), gfp);
	if (!transport)
		goto fail;

	if (!FUNC3(net, transport, addr, gfp))
		goto fail_init;

	FUNC0(transport);

	return transport;

fail_init:
	FUNC1(transport);

fail:
	return NULL;
}