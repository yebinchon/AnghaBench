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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const char *cmd)
{
	FUNC0("Start a XDP prog which encapsulates incoming packets\n"
	       "in an IPv4/v6 header and XDP_TX it out.  The dst <VIP:PORT>\n"
	       "is used to select packets to encapsulate\n\n");
	FUNC0("Usage: %s [...]\n", cmd);
	FUNC0("    -i <ifname|ifindex> Interface\n");
	FUNC0("    -a <vip-service-address> IPv4 or IPv6\n");
	FUNC0("    -p <vip-service-port> A port range (e.g. 433-444) is also allowed\n");
	FUNC0("    -s <source-ip> Used in the IPTunnel header\n");
	FUNC0("    -d <dest-ip> Used in the IPTunnel header\n");
	FUNC0("    -m <dest-MAC> Used in sending the IP Tunneled pkt\n");
	FUNC0("    -T <stop-after-X-seconds> Default: 0 (forever)\n");
	FUNC0("    -P <IP-Protocol> Default is TCP\n");
	FUNC0("    -S use skb-mode\n");
	FUNC0("    -N enforce native mode\n");
	FUNC0("    -F Force loading the XDP prog\n");
	FUNC0("    -h Display this help\n");
}