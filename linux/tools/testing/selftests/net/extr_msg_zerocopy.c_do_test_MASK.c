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
 int IP_MAXPACKET ; 
 int PF_PACKET ; 
 int SOCK_DGRAM ; 
 scalar_t__ cfg_cork ; 
 int /*<<< orphan*/  cfg_cpu ; 
 scalar_t__ cfg_rx ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 char* payload ; 

__attribute__((used)) static void FUNC4(int domain, int type, int protocol)
{
	int i;

	if (cfg_cork && (domain == PF_PACKET || type != SOCK_DGRAM))
		FUNC3(1, 0, "can only cork udp sockets");

	FUNC1(cfg_cpu);

	for (i = 0; i < IP_MAXPACKET; i++)
		payload[i] = 'a' + (i % 26);

	if (cfg_rx)
		FUNC0(domain, type, protocol);
	else
		FUNC2(domain, type, protocol);
}