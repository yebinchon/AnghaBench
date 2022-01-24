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
struct net_bridge {int /*<<< orphan*/  options; } ;
typedef  enum net_bridge_opts { ____Placeholder_net_bridge_opts } net_bridge_opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(struct net_bridge *br, enum net_bridge_opts opt, bool on)
{
	bool cur = !!FUNC1(br, opt);

	FUNC0(br, "toggle option: %d state: %d -> %d\n",
		 opt, cur, on);

	if (cur == on)
		return;

	if (on)
		FUNC3(opt, &br->options);
	else
		FUNC2(opt, &br->options);
}