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
struct TYPE_3__ {int /*<<< orphan*/  pgn; } ;
struct TYPE_4__ {TYPE_1__ j1939; } ;
struct sockaddr_can {scalar_t__ can_family; TYPE_2__ can_addr; int /*<<< orphan*/  can_ifindex; } ;

/* Variables and functions */
 scalar_t__ AF_CAN ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int ENODEV ; 
 int J1939_MIN_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sockaddr_can *addr, int len)
{
	if (!addr)
		return -EDESTADDRREQ;
	if (len < J1939_MIN_NAMELEN)
		return -EINVAL;
	if (addr->can_family != AF_CAN)
		return -EINVAL;
	if (!addr->can_ifindex)
		return -ENODEV;
	if (FUNC1(addr->can_addr.j1939.pgn) &&
	    !FUNC0(addr->can_addr.j1939.pgn))
		return -EINVAL;

	return 0;
}