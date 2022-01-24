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
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sctp_association* FUNC0 (struct net*,union sctp_addr const*,union sctp_addr const*,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static
struct sctp_association *FUNC3(struct net *net,
						 const union sctp_addr *laddr,
						 const union sctp_addr *paddr,
						 struct sctp_transport **transportp)
{
	struct sctp_association *asoc;

	FUNC1();
	asoc = FUNC0(net, laddr, paddr, transportp);
	FUNC2();

	return asoc;
}