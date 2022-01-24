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
struct socket {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 scalar_t__ FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct socket*,struct sockaddr*,int) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct net_device *dev)
{
	__be32 addr;
	struct sockaddr_in sin;

	addr = FUNC1(dev, 0, RT_SCOPE_UNIVERSE);
	if (!addr)
		FUNC2("You probably need to specify IP address on "
		       "multicast interface.\n");

	FUNC0(7, "binding socket with (%s) %pI4\n",
		  dev->name, &addr);

	/* Now bind the socket with the address of multicast interface */
	sin.sin_family	     = AF_INET;
	sin.sin_addr.s_addr  = addr;
	sin.sin_port         = 0;

	return sock->ops->bind(sock, (struct sockaddr*)&sin, sizeof(sin));
}