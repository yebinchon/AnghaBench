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
typedef  struct sctp_transport sctp_transport ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sctp_transport* FUNC2 (struct net*,union sctp_addr const*,union sctp_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*) ; 

int FUNC4(int (*cb)(struct sctp_transport *, void *),
				  struct net *net,
				  const union sctp_addr *laddr,
				  const union sctp_addr *paddr, void *p)
{
	struct sctp_transport *transport;
	int err;

	FUNC0();
	transport = FUNC2(net, laddr, paddr);
	FUNC1();
	if (!transport)
		return -ENOENT;

	err = cb(transport, p);
	FUNC3(transport);

	return err;
}