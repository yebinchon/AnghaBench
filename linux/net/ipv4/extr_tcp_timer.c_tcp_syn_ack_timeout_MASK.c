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
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ireq_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPTIMEOUTS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct request_sock const*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(const struct request_sock *req)
{
	struct net *net = FUNC2(&FUNC1(req)->ireq_net);

	FUNC0(net, LINUX_MIB_TCPTIMEOUTS);
}