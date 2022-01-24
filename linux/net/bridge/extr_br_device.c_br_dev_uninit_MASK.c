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
struct net_bridge {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct net_bridge *br = FUNC6(dev);

	FUNC2(br);
	FUNC3(br);
	FUNC4(br);
	FUNC1(br);
	FUNC0(br);
	FUNC5(br->stats);
}