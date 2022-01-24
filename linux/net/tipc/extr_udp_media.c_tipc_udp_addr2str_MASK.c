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
struct udp_media_addr {int /*<<< orphan*/  port; int /*<<< orphan*/  ipv6; int /*<<< orphan*/  proto; int /*<<< orphan*/  ipv4; } ;
struct tipc_media_addr {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct tipc_media_addr *a, char *buf, int size)
{
	struct udp_media_addr *ua = (struct udp_media_addr *)&a->value;

	if (FUNC0(ua->proto) == ETH_P_IP)
		FUNC2(buf, size, "%pI4:%u", &ua->ipv4, FUNC0(ua->port));
	else if (FUNC0(ua->proto) == ETH_P_IPV6)
		FUNC2(buf, size, "%pI6:%u", &ua->ipv6, FUNC0(ua->port));
	else
		FUNC1("Invalid UDP media address\n");
	return 0;
}