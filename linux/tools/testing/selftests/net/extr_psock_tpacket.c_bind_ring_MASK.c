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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ sll_halen; scalar_t__ sll_pkttype; scalar_t__ sll_hatype; int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  sll_family; } ;
struct ring {TYPE_1__ ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ALL ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(int sock, struct ring *ring)
{
	int ret;

	FUNC4(sock);

	ring->ll.sll_family = PF_PACKET;
	ring->ll.sll_protocol = FUNC2(ETH_P_ALL);
	ring->ll.sll_ifindex = FUNC3("lo");
	ring->ll.sll_hatype = 0;
	ring->ll.sll_pkttype = 0;
	ring->ll.sll_halen = 0;

	ret = FUNC0(sock, (struct sockaddr *) &ring->ll, sizeof(ring->ll));
	if (ret == -1) {
		FUNC5("bind");
		FUNC1(1);
	}
}