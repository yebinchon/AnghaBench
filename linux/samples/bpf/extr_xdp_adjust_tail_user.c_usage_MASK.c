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
	FUNC0("Start a XDP prog which send ICMP \"packet too big\" \n"
		"messages if ingress packet is bigger then MAX_SIZE bytes\n");
	FUNC0("Usage: %s [...]\n", cmd);
	FUNC0("    -i <ifname|ifindex> Interface\n");
	FUNC0("    -T <stop-after-X-seconds> Default: 0 (forever)\n");
	FUNC0("    -S use skb-mode\n");
	FUNC0("    -N enforce native mode\n");
	FUNC0("    -F force loading prog\n");
	FUNC0("    -h Display this help\n");
}