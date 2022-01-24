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
typedef  int /*<<< orphan*/  ver ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_VERSION ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int ver)
{
	int ret, sock = FUNC3(PF_PACKET, SOCK_RAW, 0);
	if (sock == -1) {
		FUNC1("socket");
		FUNC0(1);
	}

	ret = FUNC2(sock, SOL_PACKET, PACKET_VERSION, &ver, sizeof(ver));
	if (ret == -1) {
		FUNC1("setsockopt");
		FUNC0(1);
	}

	return sock;
}