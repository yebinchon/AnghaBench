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
struct TYPE_3__ {int port; int /*<<< orphan*/  operation; int /*<<< orphan*/  protocol; scalar_t__ is_ipv6; int /*<<< orphan*/ * address; } ;
struct TYPE_4__ {TYPE_1__ inet_network; } ;
struct tomoyo_request_info {TYPE_2__ param; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct tomoyo_request_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct in6_addr const*,struct in6_addr const*) ; 

__attribute__((used)) static int FUNC5(struct tomoyo_request_info *r)
{
	char buf[128];
	int len;
	const __be32 *address = r->param.inet_network.address;

	if (r->param.inet_network.is_ipv6)
		FUNC4(buf, sizeof(buf), (const struct in6_addr *)
				  address, (const struct in6_addr *) address);
	else
		FUNC3(buf, sizeof(buf), address, address);
	len = FUNC1(buf);
	FUNC0(buf + len, sizeof(buf) - len, " %u",
		 r->param.inet_network.port);
	return FUNC2(r, "inet", r->param.inet_network.protocol,
				    r->param.inet_network.operation, buf);
}