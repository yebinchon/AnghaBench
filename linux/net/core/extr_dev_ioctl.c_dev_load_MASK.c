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
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,char const*) ; 

void FUNC5(struct net *net, const char *name)
{
	struct net_device *dev;
	int no_module;

	FUNC2();
	dev = FUNC1(net, name);
	FUNC3();

	no_module = !dev;
	if (no_module && FUNC0(CAP_NET_ADMIN))
		no_module = FUNC4("netdev-%s", name);
	if (no_module && FUNC0(CAP_SYS_MODULE))
		FUNC4("%s", name);
}