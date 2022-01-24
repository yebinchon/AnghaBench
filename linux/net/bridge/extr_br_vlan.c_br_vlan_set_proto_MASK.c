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
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 unsigned long ETH_P_8021AD ; 
 unsigned long ETH_P_8021Q ; 
 int FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

int FUNC2(struct net_bridge *br, unsigned long val)
{
	if (val != ETH_P_8021Q && val != ETH_P_8021AD)
		return -EPROTONOSUPPORT;

	return FUNC0(br, FUNC1(val));
}