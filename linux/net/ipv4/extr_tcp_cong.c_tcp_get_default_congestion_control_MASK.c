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
struct tcp_congestion_ops {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CA_NAME_MAX ; 
 struct tcp_congestion_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct net *net, char *name)
{
	const struct tcp_congestion_ops *ca;

	FUNC1();
	ca = FUNC0(net->ipv4.tcp_congestion_control);
	FUNC3(name, ca->name, TCP_CA_NAME_MAX);
	FUNC2();
}